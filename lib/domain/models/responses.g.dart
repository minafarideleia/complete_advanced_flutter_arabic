// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) => BaseModel()
  ..status = json['status'] as int? ?? 0
  ..message = json['message'] as String? ?? '';

Map<String, dynamic> _$BaseModelToJson(BaseModel instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      numOfNotifications: json['num_of_notifications'] as int? ?? 0,
    )
      ..status = json['status'] as int? ?? 0
      ..message = json['message'] as String? ?? '';

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'id': instance.id,
      'name': instance.name,
      'num_of_notifications': instance.numOfNotifications,
    };

Constacts _$ConstactsFromJson(Map<String, dynamic> json) => Constacts(
      phone: json['phone'] as String? ?? '',
      email: json['email'] as String? ?? '',
      link: json['link'] as String? ?? '',
    )
      ..status = json['status'] as int? ?? 0
      ..message = json['message'] as String? ?? '';

Map<String, dynamic> _$ConstactsToJson(Constacts instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'phone': instance.phone,
      'email': instance.email,
      'link': instance.link,
    };

Authenticacts _$AuthenticactsFromJson(Map<String, dynamic> json) =>
    Authenticacts(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      constacts: Constacts.fromJson(json['constacts'] as Map<String, dynamic>),
    )
      ..status = json['status'] as int? ?? 0
      ..message = json['message'] as String? ?? '';

Map<String, dynamic> _$AuthenticactsToJson(Authenticacts instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'customer': instance.customer,
      'constacts': instance.constacts,
    };
