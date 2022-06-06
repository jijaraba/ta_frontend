// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericResponseModel _$GenericResponseModelFromJson(
        Map<String, dynamic> json) =>
    GenericResponseModel(
      communicationId: json['communication_id'] as String,
      favorite: json['favorite'] as String,
      isSuccessful: json['isSuccessful'] as bool,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$GenericResponseModelToJson(
        GenericResponseModel instance) =>
    <String, dynamic>{
      'communication_id': instance.communicationId,
      'favorite': instance.favorite,
      'isSuccessful': instance.isSuccessful,
      'status': instance.status,
    };
