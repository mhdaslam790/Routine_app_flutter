// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'routine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoutineEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RoutineDataModel data) setData,
    required TResult Function() getData,
    required TResult Function(DateTime date) setHeadingDate,
    required TResult Function(DateTime date, int index) selectDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_SetHeadingDate value) setHeadingDate,
    required TResult Function(_SelectDateIndex value) selectDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineEventCopyWith<$Res> {
  factory $RoutineEventCopyWith(
          RoutineEvent value, $Res Function(RoutineEvent) then) =
      _$RoutineEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoutineEventCopyWithImpl<$Res> implements $RoutineEventCopyWith<$Res> {
  _$RoutineEventCopyWithImpl(this._value, this._then);

  final RoutineEvent _value;
  // ignore: unused_field
  final $Res Function(RoutineEvent) _then;
}

/// @nodoc
abstract class _$$_SetDataCopyWith<$Res> {
  factory _$$_SetDataCopyWith(
          _$_SetData value, $Res Function(_$_SetData) then) =
      __$$_SetDataCopyWithImpl<$Res>;
  $Res call({RoutineDataModel data});
}

/// @nodoc
class __$$_SetDataCopyWithImpl<$Res> extends _$RoutineEventCopyWithImpl<$Res>
    implements _$$_SetDataCopyWith<$Res> {
  __$$_SetDataCopyWithImpl(_$_SetData _value, $Res Function(_$_SetData) _then)
      : super(_value, (v) => _then(v as _$_SetData));

  @override
  _$_SetData get _value => super._value as _$_SetData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SetData(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RoutineDataModel,
    ));
  }
}

/// @nodoc

class _$_SetData with DiagnosticableTreeMixin implements _SetData {
  const _$_SetData({required this.data});

  @override
  final RoutineDataModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoutineEvent.setData(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoutineEvent.setData'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_SetDataCopyWith<_$_SetData> get copyWith =>
      __$$_SetDataCopyWithImpl<_$_SetData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RoutineDataModel data) setData,
    required TResult Function() getData,
    required TResult Function(DateTime date) setHeadingDate,
    required TResult Function(DateTime date, int index) selectDateIndex,
  }) {
    return setData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
  }) {
    return setData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
    required TResult orElse(),
  }) {
    if (setData != null) {
      return setData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_SetHeadingDate value) setHeadingDate,
    required TResult Function(_SelectDateIndex value) selectDateIndex,
  }) {
    return setData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
  }) {
    return setData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
    required TResult orElse(),
  }) {
    if (setData != null) {
      return setData(this);
    }
    return orElse();
  }
}

abstract class _SetData implements RoutineEvent {
  const factory _SetData({required final RoutineDataModel data}) = _$_SetData;

  RoutineDataModel get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetDataCopyWith<_$_SetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetDataCopyWith<$Res> {
  factory _$$_GetDataCopyWith(
          _$_GetData value, $Res Function(_$_GetData) then) =
      __$$_GetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDataCopyWithImpl<$Res> extends _$RoutineEventCopyWithImpl<$Res>
    implements _$$_GetDataCopyWith<$Res> {
  __$$_GetDataCopyWithImpl(_$_GetData _value, $Res Function(_$_GetData) _then)
      : super(_value, (v) => _then(v as _$_GetData));

  @override
  _$_GetData get _value => super._value as _$_GetData;
}

/// @nodoc

class _$_GetData with DiagnosticableTreeMixin implements _GetData {
  const _$_GetData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoutineEvent.getData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RoutineEvent.getData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RoutineDataModel data) setData,
    required TResult Function() getData,
    required TResult Function(DateTime date) setHeadingDate,
    required TResult Function(DateTime date, int index) selectDateIndex,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_SetHeadingDate value) setHeadingDate,
    required TResult Function(_SelectDateIndex value) selectDateIndex,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements RoutineEvent {
  const factory _GetData() = _$_GetData;
}

/// @nodoc
abstract class _$$_SetHeadingDateCopyWith<$Res> {
  factory _$$_SetHeadingDateCopyWith(
          _$_SetHeadingDate value, $Res Function(_$_SetHeadingDate) then) =
      __$$_SetHeadingDateCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$$_SetHeadingDateCopyWithImpl<$Res>
    extends _$RoutineEventCopyWithImpl<$Res>
    implements _$$_SetHeadingDateCopyWith<$Res> {
  __$$_SetHeadingDateCopyWithImpl(
      _$_SetHeadingDate _value, $Res Function(_$_SetHeadingDate) _then)
      : super(_value, (v) => _then(v as _$_SetHeadingDate));

  @override
  _$_SetHeadingDate get _value => super._value as _$_SetHeadingDate;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$_SetHeadingDate(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_SetHeadingDate
    with DiagnosticableTreeMixin
    implements _SetHeadingDate {
  const _$_SetHeadingDate({required this.date});

  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoutineEvent.setHeadingDate(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoutineEvent.setHeadingDate'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetHeadingDate &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_SetHeadingDateCopyWith<_$_SetHeadingDate> get copyWith =>
      __$$_SetHeadingDateCopyWithImpl<_$_SetHeadingDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RoutineDataModel data) setData,
    required TResult Function() getData,
    required TResult Function(DateTime date) setHeadingDate,
    required TResult Function(DateTime date, int index) selectDateIndex,
  }) {
    return setHeadingDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
  }) {
    return setHeadingDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
    required TResult orElse(),
  }) {
    if (setHeadingDate != null) {
      return setHeadingDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_SetHeadingDate value) setHeadingDate,
    required TResult Function(_SelectDateIndex value) selectDateIndex,
  }) {
    return setHeadingDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
  }) {
    return setHeadingDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
    required TResult orElse(),
  }) {
    if (setHeadingDate != null) {
      return setHeadingDate(this);
    }
    return orElse();
  }
}

abstract class _SetHeadingDate implements RoutineEvent {
  const factory _SetHeadingDate({required final DateTime date}) =
      _$_SetHeadingDate;

  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetHeadingDateCopyWith<_$_SetHeadingDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectDateIndexCopyWith<$Res> {
  factory _$$_SelectDateIndexCopyWith(
          _$_SelectDateIndex value, $Res Function(_$_SelectDateIndex) then) =
      __$$_SelectDateIndexCopyWithImpl<$Res>;
  $Res call({DateTime date, int index});
}

/// @nodoc
class __$$_SelectDateIndexCopyWithImpl<$Res>
    extends _$RoutineEventCopyWithImpl<$Res>
    implements _$$_SelectDateIndexCopyWith<$Res> {
  __$$_SelectDateIndexCopyWithImpl(
      _$_SelectDateIndex _value, $Res Function(_$_SelectDateIndex) _then)
      : super(_value, (v) => _then(v as _$_SelectDateIndex));

  @override
  _$_SelectDateIndex get _value => super._value as _$_SelectDateIndex;

  @override
  $Res call({
    Object? date = freezed,
    Object? index = freezed,
  }) {
    return _then(_$_SelectDateIndex(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectDateIndex
    with DiagnosticableTreeMixin
    implements _SelectDateIndex {
  const _$_SelectDateIndex({required this.date, required this.index});

  @override
  final DateTime date;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoutineEvent.selectDateIndex(date: $date, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoutineEvent.selectDateIndex'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectDateIndex &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_SelectDateIndexCopyWith<_$_SelectDateIndex> get copyWith =>
      __$$_SelectDateIndexCopyWithImpl<_$_SelectDateIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RoutineDataModel data) setData,
    required TResult Function() getData,
    required TResult Function(DateTime date) setHeadingDate,
    required TResult Function(DateTime date, int index) selectDateIndex,
  }) {
    return selectDateIndex(date, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
  }) {
    return selectDateIndex?.call(date, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RoutineDataModel data)? setData,
    TResult Function()? getData,
    TResult Function(DateTime date)? setHeadingDate,
    TResult Function(DateTime date, int index)? selectDateIndex,
    required TResult orElse(),
  }) {
    if (selectDateIndex != null) {
      return selectDateIndex(date, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_SetHeadingDate value) setHeadingDate,
    required TResult Function(_SelectDateIndex value) selectDateIndex,
  }) {
    return selectDateIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
  }) {
    return selectDateIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_GetData value)? getData,
    TResult Function(_SetHeadingDate value)? setHeadingDate,
    TResult Function(_SelectDateIndex value)? selectDateIndex,
    required TResult orElse(),
  }) {
    if (selectDateIndex != null) {
      return selectDateIndex(this);
    }
    return orElse();
  }
}

abstract class _SelectDateIndex implements RoutineEvent {
  const factory _SelectDateIndex(
      {required final DateTime date,
      required final int index}) = _$_SelectDateIndex;

  DateTime get date => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SelectDateIndexCopyWith<_$_SelectDateIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoutineState {
  List<RoutineDataModel> get storedData => throw _privateConstructorUsedError;
  Option<Either<RoutineFailure, Unit>> get fetchDataSuccessFailureOpt =>
      throw _privateConstructorUsedError;
  Option<Either<RoutineFailure, Unit>> get setDataSuccessFailureOpt =>
      throw _privateConstructorUsedError;
  DateTime get selectedDateTime => throw _privateConstructorUsedError;
  String get headingText => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  List<RoutineDataModel> get selectedDateRoutine =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoutineStateCopyWith<RoutineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineStateCopyWith<$Res> {
  factory $RoutineStateCopyWith(
          RoutineState value, $Res Function(RoutineState) then) =
      _$RoutineStateCopyWithImpl<$Res>;
  $Res call(
      {List<RoutineDataModel> storedData,
      Option<Either<RoutineFailure, Unit>> fetchDataSuccessFailureOpt,
      Option<Either<RoutineFailure, Unit>> setDataSuccessFailureOpt,
      DateTime selectedDateTime,
      String headingText,
      int selectedIndex,
      List<RoutineDataModel> selectedDateRoutine});
}

/// @nodoc
class _$RoutineStateCopyWithImpl<$Res> implements $RoutineStateCopyWith<$Res> {
  _$RoutineStateCopyWithImpl(this._value, this._then);

  final RoutineState _value;
  // ignore: unused_field
  final $Res Function(RoutineState) _then;

  @override
  $Res call({
    Object? storedData = freezed,
    Object? fetchDataSuccessFailureOpt = freezed,
    Object? setDataSuccessFailureOpt = freezed,
    Object? selectedDateTime = freezed,
    Object? headingText = freezed,
    Object? selectedIndex = freezed,
    Object? selectedDateRoutine = freezed,
  }) {
    return _then(_value.copyWith(
      storedData: storedData == freezed
          ? _value.storedData
          : storedData // ignore: cast_nullable_to_non_nullable
              as List<RoutineDataModel>,
      fetchDataSuccessFailureOpt: fetchDataSuccessFailureOpt == freezed
          ? _value.fetchDataSuccessFailureOpt
          : fetchDataSuccessFailureOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<RoutineFailure, Unit>>,
      setDataSuccessFailureOpt: setDataSuccessFailureOpt == freezed
          ? _value.setDataSuccessFailureOpt
          : setDataSuccessFailureOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<RoutineFailure, Unit>>,
      selectedDateTime: selectedDateTime == freezed
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      headingText: headingText == freezed
          ? _value.headingText
          : headingText // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDateRoutine: selectedDateRoutine == freezed
          ? _value.selectedDateRoutine
          : selectedDateRoutine // ignore: cast_nullable_to_non_nullable
              as List<RoutineDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_RoutineStateCopyWith<$Res>
    implements $RoutineStateCopyWith<$Res> {
  factory _$$_RoutineStateCopyWith(
          _$_RoutineState value, $Res Function(_$_RoutineState) then) =
      __$$_RoutineStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<RoutineDataModel> storedData,
      Option<Either<RoutineFailure, Unit>> fetchDataSuccessFailureOpt,
      Option<Either<RoutineFailure, Unit>> setDataSuccessFailureOpt,
      DateTime selectedDateTime,
      String headingText,
      int selectedIndex,
      List<RoutineDataModel> selectedDateRoutine});
}

/// @nodoc
class __$$_RoutineStateCopyWithImpl<$Res>
    extends _$RoutineStateCopyWithImpl<$Res>
    implements _$$_RoutineStateCopyWith<$Res> {
  __$$_RoutineStateCopyWithImpl(
      _$_RoutineState _value, $Res Function(_$_RoutineState) _then)
      : super(_value, (v) => _then(v as _$_RoutineState));

  @override
  _$_RoutineState get _value => super._value as _$_RoutineState;

  @override
  $Res call({
    Object? storedData = freezed,
    Object? fetchDataSuccessFailureOpt = freezed,
    Object? setDataSuccessFailureOpt = freezed,
    Object? selectedDateTime = freezed,
    Object? headingText = freezed,
    Object? selectedIndex = freezed,
    Object? selectedDateRoutine = freezed,
  }) {
    return _then(_$_RoutineState(
      storedData: storedData == freezed
          ? _value._storedData
          : storedData // ignore: cast_nullable_to_non_nullable
              as List<RoutineDataModel>,
      fetchDataSuccessFailureOpt: fetchDataSuccessFailureOpt == freezed
          ? _value.fetchDataSuccessFailureOpt
          : fetchDataSuccessFailureOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<RoutineFailure, Unit>>,
      setDataSuccessFailureOpt: setDataSuccessFailureOpt == freezed
          ? _value.setDataSuccessFailureOpt
          : setDataSuccessFailureOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<RoutineFailure, Unit>>,
      selectedDateTime: selectedDateTime == freezed
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      headingText: headingText == freezed
          ? _value.headingText
          : headingText // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDateRoutine: selectedDateRoutine == freezed
          ? _value._selectedDateRoutine
          : selectedDateRoutine // ignore: cast_nullable_to_non_nullable
              as List<RoutineDataModel>,
    ));
  }
}

/// @nodoc

class _$_RoutineState with DiagnosticableTreeMixin implements _RoutineState {
  const _$_RoutineState(
      {required final List<RoutineDataModel> storedData,
      required this.fetchDataSuccessFailureOpt,
      required this.setDataSuccessFailureOpt,
      required this.selectedDateTime,
      required this.headingText,
      required this.selectedIndex,
      required final List<RoutineDataModel> selectedDateRoutine})
      : _storedData = storedData,
        _selectedDateRoutine = selectedDateRoutine;

  final List<RoutineDataModel> _storedData;
  @override
  List<RoutineDataModel> get storedData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storedData);
  }

  @override
  final Option<Either<RoutineFailure, Unit>> fetchDataSuccessFailureOpt;
  @override
  final Option<Either<RoutineFailure, Unit>> setDataSuccessFailureOpt;
  @override
  final DateTime selectedDateTime;
  @override
  final String headingText;
  @override
  final int selectedIndex;
  final List<RoutineDataModel> _selectedDateRoutine;
  @override
  List<RoutineDataModel> get selectedDateRoutine {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedDateRoutine);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoutineState(storedData: $storedData, fetchDataSuccessFailureOpt: $fetchDataSuccessFailureOpt, setDataSuccessFailureOpt: $setDataSuccessFailureOpt, selectedDateTime: $selectedDateTime, headingText: $headingText, selectedIndex: $selectedIndex, selectedDateRoutine: $selectedDateRoutine)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoutineState'))
      ..add(DiagnosticsProperty('storedData', storedData))
      ..add(DiagnosticsProperty(
          'fetchDataSuccessFailureOpt', fetchDataSuccessFailureOpt))
      ..add(DiagnosticsProperty(
          'setDataSuccessFailureOpt', setDataSuccessFailureOpt))
      ..add(DiagnosticsProperty('selectedDateTime', selectedDateTime))
      ..add(DiagnosticsProperty('headingText', headingText))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex))
      ..add(DiagnosticsProperty('selectedDateRoutine', selectedDateRoutine));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoutineState &&
            const DeepCollectionEquality()
                .equals(other._storedData, _storedData) &&
            const DeepCollectionEquality().equals(
                other.fetchDataSuccessFailureOpt, fetchDataSuccessFailureOpt) &&
            const DeepCollectionEquality().equals(
                other.setDataSuccessFailureOpt, setDataSuccessFailureOpt) &&
            const DeepCollectionEquality()
                .equals(other.selectedDateTime, selectedDateTime) &&
            const DeepCollectionEquality()
                .equals(other.headingText, headingText) &&
            const DeepCollectionEquality()
                .equals(other.selectedIndex, selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedDateRoutine, _selectedDateRoutine));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_storedData),
      const DeepCollectionEquality().hash(fetchDataSuccessFailureOpt),
      const DeepCollectionEquality().hash(setDataSuccessFailureOpt),
      const DeepCollectionEquality().hash(selectedDateTime),
      const DeepCollectionEquality().hash(headingText),
      const DeepCollectionEquality().hash(selectedIndex),
      const DeepCollectionEquality().hash(_selectedDateRoutine));

  @JsonKey(ignore: true)
  @override
  _$$_RoutineStateCopyWith<_$_RoutineState> get copyWith =>
      __$$_RoutineStateCopyWithImpl<_$_RoutineState>(this, _$identity);
}

abstract class _RoutineState implements RoutineState {
  const factory _RoutineState(
          {required final List<RoutineDataModel> storedData,
          required final Option<Either<RoutineFailure, Unit>>
              fetchDataSuccessFailureOpt,
          required final Option<Either<RoutineFailure, Unit>>
              setDataSuccessFailureOpt,
          required final DateTime selectedDateTime,
          required final String headingText,
          required final int selectedIndex,
          required final List<RoutineDataModel> selectedDateRoutine}) =
      _$_RoutineState;

  @override
  List<RoutineDataModel> get storedData => throw _privateConstructorUsedError;
  @override
  Option<Either<RoutineFailure, Unit>> get fetchDataSuccessFailureOpt =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<RoutineFailure, Unit>> get setDataSuccessFailureOpt =>
      throw _privateConstructorUsedError;
  @override
  DateTime get selectedDateTime => throw _privateConstructorUsedError;
  @override
  String get headingText => throw _privateConstructorUsedError;
  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  List<RoutineDataModel> get selectedDateRoutine =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RoutineStateCopyWith<_$_RoutineState> get copyWith =>
      throw _privateConstructorUsedError;
}
