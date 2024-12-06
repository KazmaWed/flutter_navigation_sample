// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'route.dart';

part 'shared_ui_state.freezed.dart';

@freezed
class SharedUiState with _$SharedUiState {
  const factory SharedUiState({
    @Default([AppScreens.main]) List<AppDestination> currendScreens,
    @Default(false) bool canPop,
  }) = _SharedUiState;
}
