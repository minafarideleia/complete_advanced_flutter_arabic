import 'package:advanced_flutter_arabic/app/constants.dart';
import 'package:dio/dio.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "langauge";

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();

    int _timeOut = 60 * 1000; // a min time out
    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION: "SEND TOKEN HERE",
      DEFAULT_LANGUAGE: "en" // todo get lang from app prefs
    };

    dio.options = BaseOptions(
        baseUrl: Constants.baseUrl,
        headers: headers,
        receiveTimeout: _timeOut,
        sendTimeout: _timeOut);

    return dio;
  }
}
