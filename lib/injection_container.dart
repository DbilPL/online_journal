import 'package:get_it/get_it.dart';

import 'package:onlinejournal/features/test_feature/data/datasources/test_data_source.dart';
import 'package:onlinejournal/features/test_feature/data/repositories/test_repository_impl.dart';
import 'package:onlinejournal/features/test_feature/domain/usecases/test_usecase.dart';
import 'package:onlinejournal/features/test_feature/presentation/bloc/test_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {

    // test entities

    sl.registerSingleton(TestDataSourceImpl());

    sl.registerSingleton(TestRepositoryImpl(dataSource: sl<TestDataSourceImpl>()));

    sl.registerSingleton(TestUsecase(sl<TestRepositoryImpl>()));

    sl.registerSingleton(TestBloc());
    
 }