import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_failure.freezed.dart';

@freezed
class RoutineFailure with _$RoutineFailure {
  const factory RoutineFailure.customError() = _CustomError;
  const factory RoutineFailure.dataAlreadyExist() = _DataAlreadyExist;
  const factory RoutineFailure.noRoutineFound() = _NoRoutineFound;
}
