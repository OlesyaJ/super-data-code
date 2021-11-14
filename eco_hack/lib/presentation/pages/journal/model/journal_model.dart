import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'journal_model.freezed.dart';

@freezed
class JournalModel with _$JournalModel {
  factory JournalModel({
    required String name,
    required String date,
    required String lon,
    required String lat,
    required String text,
    required String firm,
    required String harm,
    required String person,
  }) = _JournalModel;
}
