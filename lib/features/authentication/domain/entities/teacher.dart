part of './entities.dart';

class Teacher extends User {
  final String uid, email, password, isEmailConfirmed;

  Teacher({
    this.uid,
    this.email,
    this.password,
    this.isEmailConfirmed,
  }) : super(
          uid: uid,
          email: email,
          isEmailConfirmed: isEmailConfirmed,
          password: password,
        );

  @override
  List<Object> get props => [uid, email, password, isEmailConfirmed];
}
