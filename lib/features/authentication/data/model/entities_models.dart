import 'package:onlinejournal/features/authentication/domain/entities/entities.dart';

class UserModel extends User {
  final String uid, email, password, isEmailConfirmed;

  UserModel({
    this.uid,
    this.email,
    this.password,
    this.isEmailConfirmed,
  });

  @override
  List<Object> get props => [];
}
