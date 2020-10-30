part of 'snackbar_bloc.dart';

@freezed
abstract class SnackbarState with _$SnackbarState {
  const factory SnackbarState.initial() = _Initial;
  const factory SnackbarState.visible({
    @required String message,
    @required Color color,
  }) = _Visible;
}
