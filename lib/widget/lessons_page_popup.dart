import 'package:average_calculation/constants/app_constants.dart';
import 'package:average_calculation/helper/data_table.dart';
import 'package:average_calculation/model/department.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({Key? key}) : super(key: key);

  @override
  _LessonsPageState createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  late List<Department> department;
  int? sortColumnIndex;
  bool isAscending = false;
  @override
  void initState() {
    super.initState();
    this.department = List.of(allDepartment);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: Text(
          'Dersler',
          style: Constants.titleStyle3,
        ),
      ),
      body: _buildDataTable(),
    );
  }

  _buildDataTable() {
    final columns = [' DERS', 'KREDİ', 'DÖNEM', 'SINIF'];
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columnSpacing: 33,
        sortAscending: isAscending,
        sortColumnIndex: sortColumnIndex,
        columns: getColumns(columns),
        rows: getRows(department),
      ),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
    label: Text(column),
    onSort: onSort,
  ))
      .toList();

  getRows(List<Department> department) =>
      department.map((Department department) {
        final cells = [
          department.ders,
          department.kredi,
          department.donem,
          department.sinif
        ];
        return DataRow(cells: getCells(cells));
      }).toList();

  getCells(List<dynamic> cells) => cells
      .map((data) => DataCell(
      SelectableText.rich(TextSpan(children: [TextSpan(text: '$data')]))))
      .toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      department.sort((department1, department2) =>
          compareString(ascending, department1.ders, department2.ders));
    } else if (columnIndex == 1) {
      department.sort((department1, department2) => compareString(
          ascending, '${department1.kredi}', '${department2.kredi}'));
    } else if (columnIndex == 2) {
      department.sort((department1, department2) =>
          compareString(ascending, department1.donem, department2.donem));
    } else if (columnIndex == 3) {
      department.sort((department1, department2) => compareString(
          ascending, '${department1.sinif}', '${department2.sinif}'));
    }
    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}
