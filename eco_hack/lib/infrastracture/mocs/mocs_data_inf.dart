import 'package:dartz/dartz.dart';
import 'package:eco_hack/domain/models/table/table.dart';

import 'jsons/json_mocs_table.dart';

class MocsDomainInf {
  @override
  Either<String, List<TableModel>> getTableData() {
    final tableModelList = jsonMocsTable.map((item) => TableModel.fromJson(item)).toList();
    return right(tableModelList);
  }
}