import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:test_data/screens/home/model/data_model.dart';

import '../../../constants/api_constant.dart';

abstract class HomeRemoteDataSource {
  Future<Either<String, List<DataModel>>> getHomeApi();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final Dio dio;
  final DataConnectionChecker networkInfo;

  HomeRemoteDataSourceImpl({required this.dio, required this.networkInfo});

  @override
  Future<Either<String, List<DataModel>>> getHomeApi() async {
    List<DataModel> dataModel;
    if (await networkInfo.hasConnection) {
      try {
        final result = await dio.get(MyUrls.getHome);
        List<dynamic> jsonList = jsonDecode(result.data);
        dataModel = jsonList.map((json) => DataModel.fromJson(json)).toList();
        return Right(dataModel);
      } on DioError catch (ex) {
        if (ex.type == DioErrorType.connectTimeout) {
          return const Left(Er.networkError);
        } else if (ex.type == DioErrorType.receiveTimeout) {
          return const Left(Er.networkError);
        }
        return const Left(Er.error);
      } catch (e) {
        return const Left(Er.error);
      }
    } else {
      return const Left(Er.networkError);
    }
  }
}
