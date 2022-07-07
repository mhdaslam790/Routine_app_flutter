import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/routine/i_routine_facade.dart';
import 'package:flutter_template/domain/routine/routine_data_model.dart';
import 'package:flutter_template/domain/routine/routine_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'routine_event.dart';
part 'routine_state.dart';
part 'routine_bloc.freezed.dart';

@injectable
class RoutineBloc extends Bloc<RoutineEvent, RoutineState> {
  final IRoutineFacade _iRoutineFacade;
  RoutineBloc(this._iRoutineFacade) : super(RoutineState.initial());

  @override
  Stream<RoutineState> mapEventToState(
    RoutineEvent event,
  ) async* {
    yield* event.map(
      setData: (e) async* {
        print("object");
        final opt = await _iRoutineFacade.setData(data: e.data);
        yield opt.fold(
          (failure) => state.copyWith(
            setDataSuccessFailureOpt: some(left(failure)),
            fetchDataSuccessFailureOpt: none(),
          ),
          (success) => state.copyWith(
            setDataSuccessFailureOpt: some(right(success)),
            fetchDataSuccessFailureOpt: none(),
          ),
        );
        yield state.copyWith(
          setDataSuccessFailureOpt: none(),
        );
      },
      getData: (_) async* {
        final opt = await _iRoutineFacade.fetchData();
        yield opt.fold(
            (failure) => state.copyWith(
                  // setDataSuccessFailureOpt: some(left(failure)),
                  fetchDataSuccessFailureOpt: none(),
                ),
            (success) => state.copyWith(
                  storedData: success,
                  // setDataSuccessFailureOpt: some(right(unit)),
                  fetchDataSuccessFailureOpt: none(),
                ));
      },
      setHeadingDate: (e) async* {
        DateFormat format;
        format = DateFormat.yMMMM('en_US');
        yield state.copyWith(headingText: format.format(e.date.toLocal()));
      },
      selectDateIndex: (e) async* {
        final opt = await _iRoutineFacade.getSelectedIndexRoutine(
            allData: state.storedData, selectedDate: e.date);
        yield opt.fold(
          (l) => state.copyWith(),
          (selectedDateData) => state.copyWith(
            selectedDateRoutine: selectedDateData,
            selectedIndex: e.index,
          ),
        );
      },
    );
  }
}
