import 'package:dartz/dartz.dart';
import 'package:eco_hack/domain/models/table/table.dart';

abstract class IDomainFacade {
  Either<String, List<TableModel>> getTableData();
}