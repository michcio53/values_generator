part of 'launch_bloc.dart';

@freezed
abstract class LaunchState with _$LaunchState {
  const factory LaunchState.inProgress() = _InProgress;
  const factory LaunchState.complete() = _Complete;
  const factory LaunchState.failure(String message) = _Failure;
}