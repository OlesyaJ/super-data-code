import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'table.freezed.dart';

part 'table.g.dart';

@freezed
class TableModel with _$TableModel {
  factory TableModel({
    required String name,
    required String inn,
    required String address,
    required String status,
  }) = _TableModel;

  factory TableModel.fromJson(Map<String, dynamic> json) =>
      _$TableModelFromJson(json);
}
