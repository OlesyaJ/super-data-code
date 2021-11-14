import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tableDataProvider = ChangeNotifierProvider((ref) {
  return TableViewModel();
});


class TableViewModel extends ChangeNotifier {
   TableViewModel() {
     _init();
   }

   void _init() async {

   }
}