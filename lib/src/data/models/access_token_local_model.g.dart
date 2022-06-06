// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_local_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessTokenLocalModel _$AccessTokenLocalModelFromJson(
        Map<String, dynamic> json) =>
    AccessTokenLocalModel(
      accessToken: json['access_token'] as String,
      success: json['success'] as bool,
      message: json['message'] as String,
      user: UserLocalModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccessTokenLocalModelToJson(
        AccessTokenLocalModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'success': instance.success,
      'message': instance.message,
      'user': instance.user,
    };
