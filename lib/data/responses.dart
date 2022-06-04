import 'package:advanced_flutter_arabic/app/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(defaultValue: Constants.emptyInt)
  late int status;
  @JsonKey(defaultValue: Constants.emptyString)
  late String message;
}

@JsonSerializable()
class CustomerResponse extends BaseResponse {
  @JsonKey(defaultValue: Constants.emptyString)
  final String id;
  @JsonKey(defaultValue: Constants.emptyString)
  final String name;
  @JsonKey(name: 'num_of_notifications', defaultValue: Constants.emptyInt)
  final int numOfNotifications;

  CustomerResponse({
    required this.id,
    required this.name,
    required this.numOfNotifications,
  });

  ///* A factory constructor for creating a new [CustomerResponse] instance
  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

  ///* A factory constructor for creating a new [CustomerResponse] instance
  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ConstactsResponse extends BaseResponse {
  @JsonKey(defaultValue: Constants.emptyString)
  final String phone;
  @JsonKey(defaultValue: Constants.emptyString)
  final String email;
  @JsonKey(defaultValue: Constants.emptyString)
  final String link;

  ConstactsResponse({
    required this.phone,
    required this.email,
    required this.link,
  });

  ///* A factory constructor for creating a new [CustomerResponse] instance
  factory ConstactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ConstactsResponseFromJson(json);

  ///* A factory constructor for creating a new [CustomerResponse] instance
  Map<String, dynamic> toJson() => _$ConstactsResponseToJson(this);
}

@JsonSerializable()
class AuthenticactsResponse extends BaseResponse {
  final CustomerResponse customer;
  final ConstactsResponse constacts;

  AuthenticactsResponse({
    required this.customer,
    required this.constacts,
  });

  ///* A factory constructor for creating a new [AuthenticactsResponse] instance
  factory AuthenticactsResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticactsResponseFromJson(json);

  ///* A factory constructor for creating a new [AuthenticactsResponse] instance
  Map<String, dynamic> toJson() => _$AuthenticactsResponseToJson(this);
}
