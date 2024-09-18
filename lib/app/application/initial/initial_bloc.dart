import 'dart:async';

import 'package:astronacci_app/app/domain/auth/i_auth_repository.dart';
import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/app/domain/user/user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'initial_event.dart';
part 'initial_state.dart';
part 'initial_bloc.freezed.dart';

@injectable
class InitialBloc extends Bloc<InitialEvent, InitialState> {
  final IAuthRepository _authRepository;
  InitialBloc(this._authRepository) : super(const InitialState.loading()) {
    on<InitialEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    InitialEvent event,
    Emitter<InitialState> emit,
  ) async {
    await event.map(
      started: (event) async {
        add(const _AuthCheck());
      },
      authCheck: (event) async {
        final failureOrUser =
            await _authRepository.checkIntialStatusAndGetUser();
        return failureOrUser.fold(
          (failure) => failure.maybeWhen(
            orElse: () => emit(InitialState.failed(failure)),
            unauthorized: () => emit(const InitialState.unauthenticated(false)),
            handled: (handled) => handled.maybeWhen(
              orElse: () => emit(const InitialState.unauthenticated(false)),
              initialOpenApp: () =>
                  emit(const InitialState.unauthenticated(true)),
            ),
          ),
          (user) => emit(InitialState.authenticated(user: user)),
        );
      },
    );
  }
}
