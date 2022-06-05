import 'package:advanced_flutter_arabic/data/network/failure.dart';
import 'package:dio/dio.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioError) {
      // dio error so its an error from response of the API or from dio itself
      failure = _handleError(error);
    } else {
      // default error
      failure = DataSource.defaultError.getFailure();
    }
  }
}

Failure _handleError(DioError error) {
  switch (error.type) {
    case DioErrorType.connectTimeout:
      return DataSource.conncetTimeout.getFailure();
    case DioErrorType.sendTimeout:
      return DataSource.sendTimeOut.getFailure();
    case DioErrorType.receiveTimeout:
      return DataSource.recieveTimeOut.getFailure();
    case DioErrorType.response:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return Failure(
            error.response!.statusCode!, error.response!.statusMessage!);
      } else {
        /// #TODO: we can handle this error better, but for now we will just return default error
        /// #TODO: we can add for loop in enum below to handle all the errors
        return DataSource.defaultError.getFailure();
      }
    case DioErrorType.cancel:
      return DataSource.cancel.getFailure();
    case DioErrorType.other:
      return DataSource.defaultError.getFailure();
  }
}

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unAuthorised,
  notFound,
  internalServerError,
  conncetTimeout,
  cancel,
  recieveTimeOut,
  sendTimeOut,
  cacheError,
  noInternetConnection,
  defaultError,
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.success:
        return Failure(ResponseCode.success, ResponseMessage.success);
      case DataSource.noContent:
        return Failure(ResponseCode.noContent, ResponseMessage.noContent);
      case DataSource.badRequest:
        return Failure(ResponseCode.badRequest, ResponseMessage.badRequest);
      case DataSource.forbidden:
        return Failure(ResponseCode.forbidden, ResponseMessage.forbidden);
      case DataSource.unAuthorised:
        return Failure(ResponseCode.unAuthorised, ResponseMessage.unAuthorised);
      case DataSource.notFound:
        return Failure(ResponseCode.notFound, ResponseMessage.notFound);
      case DataSource.internalServerError:
        return Failure(ResponseCode.internalServerError,
            ResponseMessage.internalServerError);
      case DataSource.conncetTimeout:
        return Failure(
            ResponseCode.conncetTimeout, ResponseMessage.conncetTimeout);
      case DataSource.cancel:
        return Failure(ResponseCode.cancel, ResponseMessage.cancel);
      case DataSource.recieveTimeOut:
        return Failure(
            ResponseCode.recieveTimeOut, ResponseMessage.recieveTimeOut);
      case DataSource.sendTimeOut:
        return Failure(ResponseCode.sendTimeOut, ResponseMessage.sendTimeOut);
      case DataSource.cacheError:
        return Failure(ResponseCode.cacheError, ResponseMessage.cacheError);
      case DataSource.noInternetConnection:
        return Failure(ResponseCode.noInternetConnection,
            ResponseMessage.noInternetConnection);
      case DataSource.defaultError:
        return Failure(ResponseCode.defaultError, ResponseMessage.defaultError);
    }
  }
}

class ResponseCode {
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no data (no content)
  static const int badRequest = 400; // failure, API rejected request
  static const int unAuthorised = 401; // failure, user is not authorised
  static const int forbidden = 403; //  failure, API rejected request
  static const int internalServerError = 500; // failure, crash in server side
  static const int notFound = 404; // failure, not found

  // local status code
  static const int conncetTimeout = -1;
  static const int cancel = -2;
  static const int recieveTimeOut = -3;
  static const int sendTimeOut = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaultError = -7;
}

class ResponseMessage {
  static const String success = 'success'; // success with data
  static const String noContent =
      'success'; // success with no data (no content)
  static const String badRequest =
      'Bad request, Try again later'; // failure, API rejected request
  static const String unAuthorised =
      'User is unauthorised, Try again later'; // failure, user is not authorised
  static const String forbidden =
      'Forbidden request, Try again later'; //  failure, API rejected request
  static const String internalServerError =
      'Some thing went wrong, Try again later'; // failure, crash in server side
  static const String notFound =
      'Some thing went wrong, Try again later'; // failure, crash in server side

  // local status code
  static const String conncetTimeout = 'Time out error, Try again later';
  static const String cancel = 'Request was cancelled, Try again later';
  static const String recieveTimeOut = 'Time out error, Try again later';
  static const String sendTimeOut = 'Time out error, Try again later';
  static const String cacheError = 'Cache error, Try again later';
  static const String noInternetConnection =
      'Please check your internet connection';
  static const String defaultError = 'Some thing went wrong, Try again later';
}

class ApiInernalStatusCode {
  static const int success = 1;
  static const int failure = 0;
}