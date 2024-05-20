// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContainerModelImpl _$$ContainerModelImplFromJson(Map<String, dynamic> json) =>
    _$ContainerModelImpl(
      containerId: json['container_id'] as String?,
      description: json['description'] as String?,
      sensorId: json['sensor_id'] as String?,
      occupancyRate: (json['occupancy_rate'] as num?)?.toInt(),
      temperatureRate: (json['temperature_rate'] as num?)?.toInt(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      dateOfData: json['date_of_data'] as String?,
    );

Map<String, dynamic> _$$ContainerModelImplToJson(
        _$ContainerModelImpl instance) =>
    <String, dynamic>{
      'container_id': instance.containerId,
      'description': instance.description,
      'sensor_id': instance.sensorId,
      'occupancy_rate': instance.occupancyRate,
      'temperature_rate': instance.temperatureRate,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'date_of_data': instance.dateOfData,
    };
