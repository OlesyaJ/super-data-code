// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableModel _$TableModelFromJson(Map<String, dynamic> json) {
  return _TableModel.fromJson(json);
}

/// @nodoc
class _$TableModelTearOff {
  const _$TableModelTearOff();

  _TableModel call(
      {required String name,
      required String inn,
      required String address,
      required String status}) {
    return _TableModel(
      name: name,
      inn: inn,
      address: address,
      status: status,
    );
  }

  TableModel fromJson(Map<String, Object> json) {
    return TableModel.fromJson(json);
  }
}

/// @nodoc
const $TableModel = _$TableModelTearOff();

/// @nodoc
mixin _$TableModel {
  String get name => throw _privateConstructorUsedError;
  String get inn => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableModelCopyWith<TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) then) =
      _$TableModelCopyWithImpl<$Res>;
  $Res call({String name, String inn, String address, String status});
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res> implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._value, this._then);

  final TableModel _value;
  // ignore: unused_field
  final $Res Function(TableModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? inn = freezed,
    Object? address = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      inn: inn == freezed
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TableModelCopyWith<$Res> implements $TableModelCopyWith<$Res> {
  factory _$TableModelCopyWith(
          _TableModel value, $Res Function(_TableModel) then) =
      __$TableModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String inn, String address, String status});
}

/// @nodoc
class __$TableModelCopyWithImpl<$Res> extends _$TableModelCopyWithImpl<$Res>
    implements _$TableModelCopyWith<$Res> {
  __$TableModelCopyWithImpl(
      _TableModel _value, $Res Function(_TableModel) _then)
      : super(_value, (v) => _then(v as _TableModel));

  @override
  _TableModel get _value => super._value as _TableModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? inn = freezed,
    Object? address = freezed,
    Object? status = freezed,
  }) {
    return _then(_TableModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      inn: inn == freezed
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableModel with DiagnosticableTreeMixin implements _TableModel {
  _$_TableModel(
      {required this.name,
      required this.inn,
      required this.address,
      required this.status});

  factory _$_TableModel.fromJson(Map<String, dynamic> json) =>
      _$$_TableModelFromJson(json);

  @override
  final String name;
  @override
  final String inn;
  @override
  final String address;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableModel(name: $name, inn: $inn, address: $address, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TableModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('inn', inn))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TableModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.inn, inn) ||
                const DeepCollectionEquality().equals(other.inn, inn)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(inn) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$TableModelCopyWith<_TableModel> get copyWith =>
      __$TableModelCopyWithImpl<_TableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableModelToJson(this);
  }
}

abstract class _TableModel implements TableModel {
  factory _TableModel(
      {required String name,
      required String inn,
      required String address,
      required String status}) = _$_TableModel;

  factory _TableModel.fromJson(Map<String, dynamic> json) =
      _$_TableModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get inn => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TableModelCopyWith<_TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}
