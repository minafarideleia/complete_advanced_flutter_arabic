import 'package:advanced_flutter_arabic/data/dto/login.dart';
import 'package:advanced_flutter_arabic/domain/models/responses.dart';
import 'package:dartz/dartz.dart';

import '../../data/network/failure.dart';

abstract class Repositories {
  Future<Either<Failure, Authenticacts> > login(LoginDto loginDto);
}
