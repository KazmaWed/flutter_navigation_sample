// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SharedUiState {
  List<AppDestination> get currendScreens => throw _privateConstructorUsedError;
  bool get canPop => throw _privateConstructorUsedError;

  /// Create a copy of SharedUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedUiStateCopyWith<SharedUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedUiStateCopyWith<$Res> {
  factory $SharedUiStateCopyWith(
          SharedUiState value, $Res Function(SharedUiState) then) =
      _$SharedUiStateCopyWithImpl<$Res, SharedUiState>;
  @useResult
  $Res call({List<AppDestination> currendScreens, bool canPop});
}

/// @nodoc
class _$SharedUiStateCopyWithImpl<$Res, $Val extends SharedUiState>
    implements $SharedUiStateCopyWith<$Res> {
  _$SharedUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currendScreens = null,
    Object? canPop = null,
  }) {
    return _then(_value.copyWith(
      currendScreens: null == currendScreens
          ? _value.currendScreens
          : currendScreens // ignore: cast_nullable_to_non_nullable
              as List<AppDestination>,
      canPop: null == canPop
          ? _value.canPop
          : canPop // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SharedUiStateImplCopyWith<$Res>
    implements $SharedUiStateCopyWith<$Res> {
  factory _$$SharedUiStateImplCopyWith(
          _$SharedUiStateImpl value, $Res Function(_$SharedUiStateImpl) then) =
      __$$SharedUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppDestination> currendScreens, bool canPop});
}

/// @nodoc
class __$$SharedUiStateImplCopyWithImpl<$Res>
    extends _$SharedUiStateCopyWithImpl<$Res, _$SharedUiStateImpl>
    implements _$$SharedUiStateImplCopyWith<$Res> {
  __$$SharedUiStateImplCopyWithImpl(
      _$SharedUiStateImpl _value, $Res Function(_$SharedUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SharedUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currendScreens = null,
    Object? canPop = null,
  }) {
    return _then(_$SharedUiStateImpl(
      currendScreens: null == currendScreens
          ? _value._currendScreens
          : currendScreens // ignore: cast_nullable_to_non_nullable
              as List<AppDestination>,
      canPop: null == canPop
          ? _value.canPop
          : canPop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SharedUiStateImpl implements _SharedUiState {
  const _$SharedUiStateImpl(
      {final List<AppDestination> currendScreens = const [AppScreens.main],
      this.canPop = false})
      : _currendScreens = currendScreens;

  final List<AppDestination> _currendScreens;
  @override
  @JsonKey()
  List<AppDestination> get currendScreens {
    if (_currendScreens is EqualUnmodifiableListView) return _currendScreens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currendScreens);
  }

  @override
  @JsonKey()
  final bool canPop;

  @override
  String toString() {
    return 'SharedUiState(currendScreens: $currendScreens, canPop: $canPop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedUiStateImpl &&
            const DeepCollectionEquality()
                .equals(other._currendScreens, _currendScreens) &&
            (identical(other.canPop, canPop) || other.canPop == canPop));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_currendScreens), canPop);

  /// Create a copy of SharedUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedUiStateImplCopyWith<_$SharedUiStateImpl> get copyWith =>
      __$$SharedUiStateImplCopyWithImpl<_$SharedUiStateImpl>(this, _$identity);
}

abstract class _SharedUiState implements SharedUiState {
  const factory _SharedUiState(
      {final List<AppDestination> currendScreens,
      final bool canPop}) = _$SharedUiStateImpl;

  @override
  List<AppDestination> get currendScreens;
  @override
  bool get canPop;

  /// Create a copy of SharedUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedUiStateImplCopyWith<_$SharedUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
