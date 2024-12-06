import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/app_destination.dart';
import 'shared_ui_state.dart';

part 'shared_state_notifier.g.dart';

@riverpod
class SharedStateNotifier extends _$SharedStateNotifier {
  @override
  SharedUiState build() => SharedUiState();

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
