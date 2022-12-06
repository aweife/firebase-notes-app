import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class AuthEventInitialize extends AuthEvent {
  const AuthEventInitialize();
}

class AuthEventLogIn extends AuthEvent {
  const AuthEventLogIn(this.email, this.password);
  final String email;
  final String password;
}

class AuthEventLogOut extends AuthEvent {
  const AuthEventLogOut();
}

class AuthEventSendEmailVerification extends AuthEvent {
  const AuthEventSendEmailVerification();
}

class AuthEventRegister extends AuthEvent {
  const AuthEventRegister(this.email, this.password);
  final String email;
  final String password;
}

class AuthEventShouldRegister extends AuthEvent {
  const AuthEventShouldRegister();
}
