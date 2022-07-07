part of 'routine_bloc.dart';

@freezed
class RoutineEvent with _$RoutineEvent {
  const factory RoutineEvent.setData({required RoutineDataModel data}) =
      _SetData;
  const factory RoutineEvent.getData() = _GetData;
  const factory RoutineEvent.setHeadingDate({required DateTime date}) =
      _SetHeadingDate;
  const factory RoutineEvent.selectDateIndex({
    required DateTime date,
    required int index,
  }) = _SelectDateIndex;
}
