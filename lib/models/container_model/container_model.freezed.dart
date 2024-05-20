// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContainerModel _$ContainerModelFromJson(Map<String, dynamic> json) {
  return _ContainerModel.fromJson(json);
}

/// @nodoc
mixin _$ContainerModel {
  @JsonKey(name: "container_id")
  String? get containerId => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "sensor_id")
  String? get sensorId => throw _privateConstructorUsedError;
  @JsonKey(name: "occupancy_rate")
  int? get occupancyRate => throw _privateConstructorUsedError;
  @JsonKey(name: "temperature_rate")
  int? get temperatureRate => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_data")
  String? get dateOfData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContainerModelCopyWith<ContainerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerModelCopyWith<$Res> {
  factory $ContainerModelCopyWith(
          ContainerModel value, $Res Function(ContainerModel) then) =
      _$ContainerModelCopyWithImpl<$Res, ContainerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "container_id") String? containerId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "sensor_id") String? sensorId,
      @JsonKey(name: "occupancy_rate") int? occupancyRate,
      @JsonKey(name: "temperature_rate") int? temperatureRate,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "date_of_data") String? dateOfData});
}

/// @nodoc
class _$ContainerModelCopyWithImpl<$Res, $Val extends ContainerModel>
    implements $ContainerModelCopyWith<$Res> {
  _$ContainerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containerId = freezed,
    Object? description = freezed,
    Object? sensorId = freezed,
    Object? occupancyRate = freezed,
    Object? temperatureRate = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? dateOfData = freezed,
  }) {
    return _then(_value.copyWith(
      containerId: freezed == containerId
          ? _value.containerId
          : containerId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sensorId: freezed == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String?,
      occupancyRate: freezed == occupancyRate
          ? _value.occupancyRate
          : occupancyRate // ignore: cast_nullable_to_non_nullable
              as int?,
      temperatureRate: freezed == temperatureRate
          ? _value.temperatureRate
          : temperatureRate // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dateOfData: freezed == dateOfData
          ? _value.dateOfData
          : dateOfData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContainerModelImplCopyWith<$Res>
    implements $ContainerModelCopyWith<$Res> {
  factory _$$ContainerModelImplCopyWith(_$ContainerModelImpl value,
          $Res Function(_$ContainerModelImpl) then) =
      __$$ContainerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "container_id") String? containerId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "sensor_id") String? sensorId,
      @JsonKey(name: "occupancy_rate") int? occupancyRate,
      @JsonKey(name: "temperature_rate") int? temperatureRate,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "date_of_data") String? dateOfData});
}

/// @nodoc
class __$$ContainerModelImplCopyWithImpl<$Res>
    extends _$ContainerModelCopyWithImpl<$Res, _$ContainerModelImpl>
    implements _$$ContainerModelImplCopyWith<$Res> {
  __$$ContainerModelImplCopyWithImpl(
      _$ContainerModelImpl _value, $Res Function(_$ContainerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containerId = freezed,
    Object? description = freezed,
    Object? sensorId = freezed,
    Object? occupancyRate = freezed,
    Object? temperatureRate = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? dateOfData = freezed,
  }) {
    return _then(_$ContainerModelImpl(
      containerId: freezed == containerId
          ? _value.containerId
          : containerId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sensorId: freezed == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String?,
      occupancyRate: freezed == occupancyRate
          ? _value.occupancyRate
          : occupancyRate // ignore: cast_nullable_to_non_nullable
              as int?,
      temperatureRate: freezed == temperatureRate
          ? _value.temperatureRate
          : temperatureRate // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dateOfData: freezed == dateOfData
          ? _value.dateOfData
          : dateOfData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContainerModelImpl implements _ContainerModel {
  _$ContainerModelImpl(
      {@JsonKey(name: "container_id") this.containerId,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "sensor_id") this.sensorId,
      @JsonKey(name: "occupancy_rate") this.occupancyRate,
      @JsonKey(name: "temperature_rate") this.temperatureRate,
      @JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "date_of_data") this.dateOfData});

  factory _$ContainerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerModelImplFromJson(json);

  @override
  @JsonKey(name: "container_id")
  final String? containerId;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "sensor_id")
  final String? sensorId;
  @override
  @JsonKey(name: "occupancy_rate")
  final int? occupancyRate;
  @override
  @JsonKey(name: "temperature_rate")
  final int? temperatureRate;
  @override
  @JsonKey(name: "latitude")
  final double? latitude;
  @override
  @JsonKey(name: "longitude")
  final double? longitude;
  @override
  @JsonKey(name: "date_of_data")
  final String? dateOfData;

  @override
  String toString() {
    return 'ContainerModel(containerId: $containerId, description: $description, sensorId: $sensorId, occupancyRate: $occupancyRate, temperatureRate: $temperatureRate, latitude: $latitude, longitude: $longitude, dateOfData: $dateOfData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerModelImpl &&
            (identical(other.containerId, containerId) ||
                other.containerId == containerId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sensorId, sensorId) ||
                other.sensorId == sensorId) &&
            (identical(other.occupancyRate, occupancyRate) ||
                other.occupancyRate == occupancyRate) &&
            (identical(other.temperatureRate, temperatureRate) ||
                other.temperatureRate == temperatureRate) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.dateOfData, dateOfData) ||
                other.dateOfData == dateOfData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      containerId,
      description,
      sensorId,
      occupancyRate,
      temperatureRate,
      latitude,
      longitude,
      dateOfData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerModelImplCopyWith<_$ContainerModelImpl> get copyWith =>
      __$$ContainerModelImplCopyWithImpl<_$ContainerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerModelImplToJson(
      this,
    );
  }
}

abstract class _ContainerModel implements ContainerModel {
  factory _ContainerModel(
          {@JsonKey(name: "container_id") final String? containerId,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "sensor_id") final String? sensorId,
          @JsonKey(name: "occupancy_rate") final int? occupancyRate,
          @JsonKey(name: "temperature_rate") final int? temperatureRate,
          @JsonKey(name: "latitude") final double? latitude,
          @JsonKey(name: "longitude") final double? longitude,
          @JsonKey(name: "date_of_data") final String? dateOfData}) =
      _$ContainerModelImpl;

  factory _ContainerModel.fromJson(Map<String, dynamic> json) =
      _$ContainerModelImpl.fromJson;

  @override
  @JsonKey(name: "container_id")
  String? get containerId;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "sensor_id")
  String? get sensorId;
  @override
  @JsonKey(name: "occupancy_rate")
  int? get occupancyRate;
  @override
  @JsonKey(name: "temperature_rate")
  int? get temperatureRate;
  @override
  @JsonKey(name: "latitude")
  double? get latitude;
  @override
  @JsonKey(name: "longitude")
  double? get longitude;
  @override
  @JsonKey(name: "date_of_data")
  String? get dateOfData;
  @override
  @JsonKey(ignore: true)
  _$$ContainerModelImplCopyWith<_$ContainerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
