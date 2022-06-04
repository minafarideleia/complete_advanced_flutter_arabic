import 'package:advanced_flutter_arabic/app/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class BaseModel {
  @JsonKey(defaultValue: Constants.emptyInt)
  late int status;
  @JsonKey(defaultValue: Constants.emptyString)
  late String message;
}

@JsonSerializable()
class Customer extends BaseModel {
  @JsonKey(defaultValue: Constants.emptyString)
  final String id;
  @JsonKey(defaultValue: Constants.emptyString)
  final String name;
  @JsonKey(name: 'num_of_notifications', defaultValue: Constants.emptyInt)
  final int numOfNotifications;

  Customer({
    required this.id,
    required this.name,
    required this.numOfNotifications,
  });

  ///* A factory constructor for creating a new [Customer] instance
  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  ///* A factory constructor for creating a new [Customer] instance
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}

@JsonSerializable()
class Constacts extends BaseModel {
  @JsonKey(defaultValue: Constants.emptyString)
  final String phone;
  @JsonKey(defaultValue: Constants.emptyString)
  final String email;
  @JsonKey(defaultValue: Constants.emptyString)
  final String link;

  Constacts({
    required this.phone,
    required this.email,
    required this.link,
  });

  ///* A factory constructor for creating a new [Customer] instance
  factory Constacts.fromJson(Map<String, dynamic> json) =>
      _$ConstactsFromJson(json);

  ///* A factory constructor for creating a new [Customer] instance
  Map<String, dynamic> toJson() => _$ConstactsToJson(this);
}

@JsonSerializable()
class Authenticacts extends BaseModel {
  final Customer customer;
  final Constacts constacts;

  Authenticacts({
    required this.customer,
    required this.constacts,
  });

  ///* A factory constructor for creating a new [Authenticacts] instance
  factory Authenticacts.fromJson(Map<String, dynamic> json) =>
      _$AuthenticactsFromJson(json);

  ///* A factory constructor for creating a new [Authenticacts] instance
  Map<String, dynamic> toJson() => _$AuthenticactsToJson(this);
}
