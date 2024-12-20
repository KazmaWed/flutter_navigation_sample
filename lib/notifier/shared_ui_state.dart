// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/app_destination.dart';

part 'shared_ui_state.freezed.dart';

@freezed
class SharedUiState with _$SharedUiState {
  const factory SharedUiState({
    @Default([IncrementScreens.index, NavigatorScreens.index]) List<AppDestination> currendScreens,
    @Default(false) bool canPop,
  }) = _SharedUiState;
}
