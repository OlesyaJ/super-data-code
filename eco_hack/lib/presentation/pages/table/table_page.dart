import 'package:eco_hack/infrastracture/mocs/jsons/json_mocs_table.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TablePage extends StatefulWidget {
  TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  DataTableSource _data = TableData();

  @override
  Widget build(BuildContext context) {
    final titleStyle = GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
      color: Color(0xff31394D),
    );
    final textStyle = GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      color: Color(0xff31394D),
    );

    return PaginatedDataTable(
      source: _data,
      // header: Text('My Products'),
      columns: [
        DataColumn(label: Text('№', style: titleStyle)),
        DataColumn(label: Text('Название организации', style: titleStyle)),
        DataColumn(label: Text('ИНН', style: titleStyle)),
        DataColumn(label: Text('Адрес', style: titleStyle)),
        DataColumn(label: Text('Вид деятельности', style: titleStyle)),
        DataColumn(label: Text('Телефон', style: titleStyle)),
        DataColumn(label: Text('Email', style: titleStyle)),
        DataColumn(label: Text('Статус', style: titleStyle)),
      ],
      columnSpacing: 50,
      horizontalMargin: 3,
      rowsPerPage: 7,
      sortColumnIndex: 1,
      sortAscending: true,
      showCheckboxColumn: false,
    );
  }
}

class StatusWidget extends StatelessWidget {
  const StatusWidget({Key? key, required this.status}) : super(key: key);

  final String status;

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    switch (status) {
      case "Превышение":
        color = const Color(0xffFF7A9B);
        break;
      case "Нет выбросов":
        color = const Color(0xff3F92E8);
        break;
      case "В пределах нормы":
        color = const Color(0xff8BE4D4);
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          maxRadius: 7.0,
          backgroundColor: color,
          foregroundColor: color,
        ),
        Text(
          status,
          style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            color: Color(0xff31394D),
          ),
        ),
      ],
    );
  }
}

// The "soruce" of the table
class TableData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = jsonMocsTable;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;

  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'])),
      DataCell(Text(_data[index]["firm_name"])),
      DataCell(Text(_data[index]["inn"])),
      DataCell(Text(_data[index]["adress"])),
      DataCell(Text(_data[index]["cvalification"])),
      DataCell(Text(_data[index]["phone"])),
      DataCell(Text(_data[index]["email"])),
      DataCell(StatusWidget(status: _data[index]["status"])),
    ]);
  }
}
