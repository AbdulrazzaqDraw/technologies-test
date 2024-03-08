import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_data/screens/home/bloc/home_bloc.dart';

import 'constants/api_constant.dart';
import 'screens/home/remote/home_remote.dart';

final sl = GetIt.instance;

///
/// The [init] function is responsible for adding the instances to the graph
///
Future<void> init() async {
  // Dio For Api request
  sl.registerLazySingleton(
    () {
      final dio = Dio(
        BaseOptions(
          connectTimeout: 12000,
          receiveTimeout: 12000,
          baseUrl: MyUrls.baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Accept-Language': "en",
          },
          responseType: ResponseType.plain,
          followRedirects: true,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );

      dio.interceptors.add(
        LogInterceptor(
          responseBody: false,
          responseHeader: false,
          requestHeader: false,
          request: false,
        ),
      );
      return dio;
    },
  );

  // Data Checker package
  sl.registerLazySingleton(() => DataConnectionChecker());

  // Remote for Api requests
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(dio: sl(), networkInfo: sl()),
  );

  // Bloc
  sl.registerLazySingleton(() => HomeBloc(homeRemoteDataSource: sl()));
}
