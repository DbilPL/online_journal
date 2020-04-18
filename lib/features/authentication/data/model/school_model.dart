import 'package:onlinejournal/features/authentication/domain/entities/entities.dart';

class SchoolAdminUserModel extends SchoolAdminUser {
  final String uid, email, password, isEmailConfirmed;

  SchoolAdminUserModel({
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
}
