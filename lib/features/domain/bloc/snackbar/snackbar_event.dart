part of 'snackbar_bloc.dart';

@freezed
abstract class SnackbarEvent with _$SnackbarEvent {
  const factory SnackbarEvent.failureOccured(Failure failure) = _FailureOccured;
  const factory SnackbarEvent.positive(String message) = _PositiveShowed;
  const factory SnackbarEvent.negative(String message) = _NegativeShowed;
}
