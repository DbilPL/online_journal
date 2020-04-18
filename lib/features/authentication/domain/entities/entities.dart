import 'package:equatable/equatable.dart';

part './school.dart';
part './student.dart';
part './teacher.dart';

class User extends Equatable {
  final String uid, email, password, isEmailConfirmed;

  User({this.uid, this.email, this.password, this.isEmailConfirmed});

  @override
  List<Object> get props => [email, uid, password, isEmailConfirmed];
}
