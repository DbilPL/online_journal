part of './entities.dart';

class Student extends User {
  final String uid, email, password, isEmailConfirmed;

  Student({
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
