part of 'auth_cubit.dart';

enum AuthStatus {
  initial,
  loading,
  loaded,
  error
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    String? token,
  }) = _AuthState;
}