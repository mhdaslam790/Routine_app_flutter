part of 'routine_bloc.dart';

@freezed
class RoutineState with _$RoutineState {
  const factory RoutineState({
    required List<RoutineDataModel> storedData,
    required Option<Either<RoutineFailure, Unit>> fetchDataSuccessFailureOpt,
    required Option<Either<RoutineFailure, Unit>> setDataSuccessFailureOpt,
    required DateTime selectedDateTime,
    required String headingText,
    required int selectedIndex,
    required List<RoutineDataModel> selectedDateRoutine,
  }) = _RoutineState;
  factory RoutineState.initial() => RoutineState(
        storedData: [],
        fetchDataSuccessFailureOpt: none(),
        setDataSuccessFailureOpt: none(),
        selectedDateTime: DateTime.now(),
        headingText: '',
        selectedDateRoutine: [],
        selectedIndex: 0,
      );
}
