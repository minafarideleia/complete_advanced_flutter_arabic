// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..status = json['status'] as int? ?? 0
  ..message = json['message'] as String? ?? '';

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) =>
    CustomerResponse(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      numOfNotifications: json['num_of_notifications'] as int? ?? 0,
    )
      ..status = json['status'] as int? ?? 0
      ..message = json['message'] as String? ?? '';

Map<String, dynamic> _$CustomerResponseToJson(CustomerResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'id': instance.id,
      'name': instance.name,
      'num_of_notifications': instance.numOfNotifications,
    };

ConstactsResponse _$ConstactsResponseFromJson(Map<String, dynamic> json) =>
    ConstactsResponse(
      phone: json['phone'] as String? ?? '',
      email: json['email'] as String? ?? '',
      link: json['link'] as String? ?? '',
    )
      ..status = json['status'] as int? ?? 0
      ..message = json['message'] as String? ?? '';

Map<String, dynamic> _$ConstactsResponseToJson(ConstactsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'phone': instance.phone,
      'email': instance.email,
      'link': instance.link,
    };

AuthenticactsResponse _$AuthenticactsResponseFromJson(
        Map<String, dynamic> json) =>
    AuthenticactsResponse(
      customer:
          CustomerResponse.fromJson(json['customer'] as Map<String, dynamic>),
      constacts:
          ConstactsResponse.fromJson(json['constacts'] as Map<String, dynamic>),
    )
      ..status = json['status'] as int? ?? 0
      ..message = json['message'] as String? ?? '';

Map<String, dynamic> _$AuthenticactsResponseToJson(
        AuthenticactsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'customer': instance.customer,
      'constacts': instance.constacts,
    };
