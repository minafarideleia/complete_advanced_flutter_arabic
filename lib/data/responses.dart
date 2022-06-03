import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BaseResponse {
  int? status;
  String? message;
}

@JsonSerializable()
class CustomerResponse extends BaseResponse {
  String? id;
  String? name;
  @JsonKey(name: 'num_of_notifications')
  int? numOfNotifications;
}

@JsonSerializable()
class ConstactsResponse extends BaseResponse {
  String? phone;
  String? email;
  String? link;
}

@JsonSerializable()
class AuthenticactsResponse extends BaseResponse {
  CustomerResponse? customer;
  ConstactsResponse? constacts;
}
