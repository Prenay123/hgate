//app_state.dart
import 'package:meta/meta.dart';

@immutable
class AppState {
  const AppState();
  factory AppState.initial() => const AppState();
  AppState copyWith() {
    return const AppState();
  }
}
