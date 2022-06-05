import 'package:advanced_flutter_arabic/data/dto/login.dart';
import 'package:advanced_flutter_arabic/data/network/data_source/remote_data_source.dart';
import 'package:advanced_flutter_arabic/data/network/error_handler.dart';
import 'package:advanced_flutter_arabic/data/network/network_info.dart';
import 'package:advanced_flutter_arabic/domain/models/responses.dart';
import 'package:dartz/dartz.dart';

import '../../data/network/failure.dart';

abstract class Repositories {
  Future<Either<Failure, Authentication>> login(LoginDto loginDto);
}

class RepositoriesImpl implements Repositories {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  RepositoriesImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(LoginDto loginDto) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.login(loginDto);

        if (response.status == 1) {
          return Right(response);
        } else {
          return Left(Failure(ApiInernalStatusCode.success, response.message));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
