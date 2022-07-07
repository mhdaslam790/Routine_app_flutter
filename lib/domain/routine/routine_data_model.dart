import 'dart:convert';

class RoutineDataModel {
  RoutineDataModel({
    required this.id,
    required this.name,
    required this.startTime,
    required this.endTime,
    required this.date,
  });

  String id;
  String name;
  String startTime;
  String endTime;
  String date;

  RoutineDataModel copyWith({
    String? id,
    String? name,
    String? startTime,
    String? endTime,
    String? date,
  }) =>
      RoutineDataModel(
        id: id ?? this.id,
        name: name ?? this.name,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        date: date ?? this.date,
      );
  factory RoutineDataModel.empty() => RoutineDataModel(
        id: '',
        name: '',
        startTime: '',
        endTime: '',
        date: '',
      );
  factory RoutineDataModel.fromJson(String str) =>
      RoutineDataModel.fromMap(json.decode(str) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  factory RoutineDataModel.fromMap(Map<String, dynamic> json) =>
      RoutineDataModel(
        id: json["_id"] as String,
        name: json["name"] as String,
        startTime: json["startTime"] as String,
        endTime: json["endTime"] as String,
        date: json["date"] as String,
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "startTime": startTime,
        "endTime": endTime,
        "date": date,
      };
}
