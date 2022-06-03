import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

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

  CustomerResponse({
    this.id,
    this.name,
    this.numOfNotifications,
  });

  ///* A factory constructor for creating a new [CustomerResponse] instance
  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

  ///* A factory constructor for creating a new [CustomerResponse] instance
  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ConstactsResponse extends BaseResponse {
  String? phone;
  String? email;
  String? link;

  ConstactsResponse({
    this.phone,
    this.email,
    this.link,
  });

  ///* A factory constructor for creating a new [CustomerResponse] instance
  factory ConstactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ConstactsResponseFromJson(json);

  ///* A factory constructor for creating a new [CustomerResponse] instance
  Map<String, dynamic> toJson() => _$ConstactsResponseToJson(this);
}

@JsonSerializable()
class AuthenticactsResponse extends BaseResponse {
  CustomerResponse? customer;
  ConstactsResponse? constacts;

  AuthenticactsResponse({
    this.customer,
    this.constacts,
  });

  ///* A factory constructor for creating a new [AuthenticactsResponse] instance
  factory AuthenticactsResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticactsResponseFromJson(json);

  ///* A factory constructor for creating a new [AuthenticactsResponse] instance
  Map<String, dynamic> toJson() => _$AuthenticactsResponseToJson(this);
}
