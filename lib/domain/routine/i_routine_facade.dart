import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/routine/routine_data_model.dart';
import 'package:flutter_template/domain/routine/routine_failure.dart';
import 'package:flutter_template/domain/routine/routine_model.dart';

abstract class IRoutineFacade {
  Future<Either<RoutineFailure, Unit>> setData(
      {required RoutineDataModel data});
  Future<Either<RoutineFailure, List<RoutineDataModel>>> fetchData();
  Future<Either<RoutineFailure, List<RoutineDataModel>>>
      getSelectedIndexRoutine(
          {required DateTime selectedDate,
          required List<RoutineDataModel> allData});
}
