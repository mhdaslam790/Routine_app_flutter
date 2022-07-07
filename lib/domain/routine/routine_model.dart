// import 'dart:convert';

// import 'package:flutter_template/domain/routine/routine_data_model.dart';

// class RoutineModel {
//   RoutineModel({
//     required this.success,
//     required this.data,
//     required this.msg,
//     required this.errors,
//   });

//   bool success;
//   List<RoutineDataModel> data;
//   String msg;
//   List<dynamic> errors;

//   RoutineModel copyWith({
//     bool? success,
//     List<RoutineDataModel>? data,
//     String? msg,
//     List<dynamic>? errors,
//   }) =>
//       RoutineModel(
//         success: success ?? this.success,
//         data: data ?? this.data,
//         msg: msg ?? this.msg,
//         errors: errors ?? this.errors,
//       );
//   factory RoutineModel.empty() => RoutineModel(
//         success: false,
//         data: [],
//         msg: '',
//         errors: [],
//       );
//   factory RoutineModel.fromJson(String str) =>
//       RoutineModel.fromMap(json.decode(str) as Map<String, dynamic>);

//   String toJson() => json.encode(toMap());

//   factory RoutineModel.fromMap(Map<String, dynamic> map) => RoutineModel(
//         success: map["success"] as bool,
//         data: map["data"]
//             .map((x) => RoutineDataModel.fromMap(x as Map<String, dynamic>))
//             .toList()
//             .cast<RoutineDataModel>() as List<RoutineDataModel>,
//         msg: map["msg"] as String,
//         errors: map["errors"].map((x) => x).toList().cast<dynamic>()
//             as List<dynamic>,
//       );

//   Map<String, dynamic> toMap() => {
//         "success": success,
//         "data": List<dynamic>.from(data.map((x) => x.toMap())),
//         "msg": msg,
//         "errors": List<dynamic>.from(errors.map((x) => x)),
//       };
// }
