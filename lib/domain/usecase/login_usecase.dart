import 'package:advanced_flutter_arabic/data/dto/login.dart';
import 'package:advanced_flutter_arabic/data/network/failure.dart';
import 'package:advanced_flutter_arabic/domain/models/responses.dart';
import 'package:advanced_flutter_arabic/domain/repository/repositories.dart';
import 'package:advanced_flutter_arabic/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase extends BaseUseCase<LoginDto, Authenticacts> {
  final Repositories _repositories;

  LoginUseCase(this._repositories);
  @override
  Future<Either<Failure, Authenticacts>> execute(LoginDto input) async {
    return await _repositories.login(input);
  }
}
