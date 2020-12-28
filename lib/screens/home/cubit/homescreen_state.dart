part of 'homescreen_cubit.dart';

class HomeScreenState extends Equatable {
  const HomeScreenState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
  });

  final Email email;
  final Password password;
  final FormzStatus status;

  @override
  List<Object> get props => [email, password, status];

  HomeScreenState copyWith({
    Email email,
    Password password,
    FormzStatus status,
  }) {
    return HomeScreenState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }
}
