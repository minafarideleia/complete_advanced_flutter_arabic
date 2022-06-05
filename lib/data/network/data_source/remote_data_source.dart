import 'package:advanced_flutter_arabic/data/network/api_client.dart';
import 'package:advanced_flutter_arabic/domain/models/responses.dart';

import '../../dto/login.dart';

abstract class RemoteDataSource {
  Future<Authentication> login(LoginDto loginDto);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiClient _apiClient;

  RemoteDataSourceImpl(this._apiClient);
  @override
  Future<Authentication> login(LoginDto loginDto) async {
    final response =
        await _apiClient.login(loginDto.email, loginDto.password, '', '');
    return response;
  }
}
