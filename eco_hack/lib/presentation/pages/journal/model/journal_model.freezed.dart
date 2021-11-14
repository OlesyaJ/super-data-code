// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'journal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JournalModelTearOff {
  const _$JournalModelTearOff();

  _JournalModel call(
      {required String name,
      required String date,
      required String lon,
      required String lat,
      required String text,
      required String firm,
      required String harm,
      required String person}) {
    return _JournalModel(
      name: name,
      date: date,
      lon: lon,
      lat: lat,
      text: text,
      firm: firm,
      harm: harm,
      person: person,
    );
  }
}

/// @nodoc
const $JournalModel = _$JournalModelTearOff();

/// @nodoc
mixin _$JournalModel {
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get lon => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get firm => throw _privateConstructorUsedError;
  String get harm => throw _privateConstructorUsedError;
  String get person => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JournalModelCopyWith<JournalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalModelCopyWith<$Res> {
  factory $JournalModelCopyWith(
          JournalModel value, $Res Function(JournalModel) then) =
      _$JournalModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String date,
      String lon,
      String lat,
      String text,
      String firm,
      String harm,
      String person});
}

/// @nodoc
class _$JournalModelCopyWithImpl<$Res> implements $JournalModelCopyWith<$Res> {
  _$JournalModelCopyWithImpl(this._value, this._then);

  final JournalModel _value;
  // ignore: unused_field
  final $Res Function(JournalModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
    Object? lon = freezed,
    Object? lat = freezed,
    Object? text = freezed,
    Object? firm = freezed,
    Object? harm = freezed,
    Object? person = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      firm: firm == freezed
          ? _value.firm
          : firm // ignore: cast_nullable_to_non_nullable
              as String,
      harm: harm == freezed
          ? _value.harm
          : harm // ignore: cast_nullable_to_non_nullable
              as String,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JournalModelCopyWith<$Res>
    implements $JournalModelCopyWith<$Res> {
  factory _$JournalModelCopyWith(
          _JournalModel value, $Res Function(_JournalModel) then) =
      __$JournalModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String date,
      String lon,
      String lat,
      String text,
      String firm,
      String harm,
      String person});
}

/// @nodoc
class __$JournalModelCopyWithImpl<$Res> extends _$JournalModelCopyWithImpl<$Res>
    implements _$JournalModelCopyWith<$Res> {
  __$JournalModelCopyWithImpl(
      _JournalModel _value, $Res Function(_JournalModel) _then)
      : super(_value, (v) => _then(v as _JournalModel));

  @override
  _JournalModel get _value => super._value as _JournalModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
    Object? lon = freezed,
    Object? lat = freezed,
    Object? text = freezed,
    Object? firm = freezed,
    Object? harm = freezed,
    Object? person = freezed,
  }) {
    return _then(_JournalModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      firm: firm == freezed
          ? _value.firm
          : firm // ignore: cast_nullable_to_non_nullable
              as String,
      harm: harm == freezed
          ? _value.harm
          : harm // ignore: cast_nullable_to_non_nullable
              as String,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JournalModel with DiagnosticableTreeMixin implements _JournalModel {
  _$_JournalModel(
      {required this.name,
      required this.date,
      required this.lon,
      required this.lat,
      required this.text,
      required this.firm,
      required this.harm,
      required this.person});

  @override
  final String name;
  @override
  final String date;
  @override
  final String lon;
  @override
  final String lat;
  @override
  final String text;
  @override
  final String firm;
  @override
  final String harm;
  @override
  final String person;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JournalModel(name: $name, date: $date, lon: $lon, lat: $lat, text: $text, firm: $firm, harm: $harm, person: $person)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JournalModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('lon', lon))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('firm', firm))
      ..add(DiagnosticsProperty('harm', harm))
      ..add(DiagnosticsProperty('person', person));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JournalModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.firm, firm) ||
                const DeepCollectionEquality().equals(other.firm, firm)) &&
            (identical(other.harm, harm) ||
                const DeepCollectionEquality().equals(other.harm, harm)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(lon) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(firm) ^
      const DeepCollectionEquality().hash(harm) ^
      const DeepCollectionEquality().hash(person);

  @JsonKey(ignore: true)
  @override
  _$JournalModelCopyWith<_JournalModel> get copyWith =>
      __$JournalModelCopyWithImpl<_JournalModel>(this, _$identity);
}

abstract class _JournalModel implements JournalModel {
  factory _JournalModel(
      {required String name,
      required String date,
      required String lon,
      required String lat,
      required String text,
      required String firm,
      required String harm,
      required String person}) = _$_JournalModel;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get lon => throw _privateConstructorUsedError;
  @override
  String get lat => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String get firm => throw _privateConstructorUsedError;
  @override
  String get harm => throw _privateConstructorUsedError;
  @override
  String get person => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JournalModelCopyWith<_JournalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
