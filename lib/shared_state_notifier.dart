import 'package:flutter_navigator_sample/route.dart';
import 'package:flutter_navigator_sample/shared_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shared_state_notifier.g.dart';

@riverpod
class SharedStateNotifier extends _$SharedStateNotifier {
  @override
  SharedUiState build() => const SharedUiState();

  void navigate(List<AppDestination> destinations) {
    state = state.copyWith(
      currendScreens: destinations,
    );
  }

  void navigateOnTab(AppDestination destination, int index) {
    final list = List<AppDestination>.from(state.currendScreens);
    list[index] = destination;
    state = state.copyWith(
      currendScreens: list,
      canPop: ![
        IncrementScreens.index.route,
        NavigatorScreens.index.route,
      ].contains(destination.route),
    );
  }
}
