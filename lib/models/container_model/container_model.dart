// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_model.freezed.dart';
part 'container_model.g.dart';

@freezed
class ContainerModel with _$ContainerModel {
  factory ContainerModel({
    @JsonKey(name: "container_id") String? containerId,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "sensor_id") String? sensorId,
    @JsonKey(name: "occupancy_rate") int? occupancyRate,
    @JsonKey(name: "temperature_rate") int? temperatureRate,
    @JsonKey(name: "latitude") double? latitude,
    @JsonKey(name: "longitude") double? longitude,
    @JsonKey(name: "date_of_data") String? dateOfData,
  }) = _ContainerModel;

  factory ContainerModel.fromJson(Map<String, dynamic> json) => _$ContainerModelFromJson(json);
}