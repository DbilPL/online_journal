import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:onlinejournal/features/authentication/data/datasources/school_auth_data_source.dart';
import 'package:onlinejournal/features/authentication/data/repositories/school_auth_repository_impl.dart';
import 'package:onlinejournal/features/authentication/domain/usecases/register_school.dart';
import 'package:onlinejournal/features/authentication/presentation/bloc/test_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // for app
  sl.registerSingleton(DataConnectionChecker());
  sl.registerSingleton(Firestore.instance);
  sl.registerSingleton(FirebaseAuth.instance);

  sl.registerSingleton(
      SchoolAuthenticationDataSourceImpl(sl<FirebaseAuth>(), sl<Firestore>()));

  sl.registerSingleton(SchoolAuthenticationRepositoryImpl(
      sl<DataConnectionChecker>(), sl<SchoolAuthenticationDataSourceImpl>()));

  sl.registerSingleton(
      RegisterSchool(sl<SchoolAuthenticationRepositoryImpl>()));

  sl.registerSingleton(TestBloc());
}
