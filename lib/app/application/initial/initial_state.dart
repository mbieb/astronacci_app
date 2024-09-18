part of 'initial_bloc.dart';

@freezed
class InitialState with _$InitialState {
  const factory InitialState.loading() = _Loading;
  const factory InitialState.unauthenticated(bool isInitial) = _Unauthenticated;
  const factory InitialState.authenticated({
    required User user,
  }) = _Authenticated;
  const factory InitialState.failed(AppFailure failure) = _Failed;
}
