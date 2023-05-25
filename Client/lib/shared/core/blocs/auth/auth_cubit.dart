import 'package:bloc/bloc.dart';
import 'package:client/data/domain/repository/auth/i_auth_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required IAuthRepository repository})
      : _repository = repository,
        super(AuthState());

  final IAuthRepository _repository;

  Future<void> login(String username, String password) async {
    try {
      emit(state.copyWith(status: AuthStatus.initial));

      final String? token = await _repository.login(username, password);

      emit(state.copyWith(status: AuthStatus.loaded, token: token));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  Future<void> logout() async {
    try {
      emit(state.copyWith(status: AuthStatus.initial));

      await _repository.logout();

      emit(state.copyWith(status: AuthStatus.loaded, token: null));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.error));
    }
  }
}
