import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/routine/i_routine_facade.dart';
import 'package:flutter_template/domain/routine/routine_failure.dart';
import 'package:flutter_template/domain/routine/routine_data_model.dart';
import 'package:flutter_template/domain/routine/routine_model.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

@LazySingleton(as: IRoutineFacade)
class RoutineFacade implements IRoutineFacade {
  RoutineFacade();
  @override
  Future<Either<RoutineFailure, List<RoutineDataModel>>> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse('https://alpha.classaccess.io/api/challenge/v1/schedule'),
      );
      print(response.statusCode);

      // if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      final list = (responseJson['data'] as List)
          .map((p) => RoutineDataModel.fromMap(p as Map<String, dynamic>))
          .toList();
      list.forEach((e) {
        print(e.toMap());
      });
      return right(list);

      // }
    } catch (e) {
      print(e.toString());
      return left(const RoutineFailure.customError());
    }
  }

  @override
  Future<Either<RoutineFailure, Unit>> setData({
    required RoutineDataModel data,
  }) async {
    try {
      final http.Response response = await http.post(
        Uri.parse(
            'https://alpha.classaccess.io/api/challenge/v1/save/schedule'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: data.toJson(),
      );
      print(response.body);
      // if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      final msg = (responseJson['msg'] as String);
      if (msg == "Successfully saved schedule") {
        print(response.body);
        return right(unit);
      } else {
        print(response.body);
        return left(const RoutineFailure.dataAlreadyExist());
      }
      // } else {
      //   return left(const RoutineFailure.customError());
      // }

      return right(unit);
    } catch (e) {
      return left(const RoutineFailure.customError());
    }
  }

  @override
  Future<Either<RoutineFailure, List<RoutineDataModel>>>
      getSelectedIndexRoutine({
    required DateTime selectedDate,
    required List<RoutineDataModel> allData,
  }) async {
    final List<RoutineDataModel> specificDateRoutine = [];
    print("object");
    allData.forEach((element) {
      print(element.toMap());
    });
    for (final routine in allData) {
      print(routine.toMap());
      final DateTime tempDate = DateFormat("dd/MM/yyyy").parse(routine.date);
      print(tempDate);
      if (tempDate.day == selectedDate.day &&
          tempDate.month == selectedDate.month &&
          tempDate.year == selectedDate.year) {
        specificDateRoutine.add(routine);
        print(routine.toMap());
      }
    }
    return right(specificDateRoutine);
  }
}
