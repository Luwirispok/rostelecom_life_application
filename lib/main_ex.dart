import 'dart:io';

import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:rostelecom_life_application/enum/excel_headers_enum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> headerDataList = [];
  List<List<dynamic>> tilesDataList = [];

  void names() async {
    var file = 'example_data/Аудит заявок РФ_13.03.23.xlsx';
    var bytes = File(file).readAsBytesSync();
    Excel excel = Excel.decodeBytes(bytes);

    for (String tableName in excel.tables.keys) {
      print(tableName);
      print(excel.tables[tableName]!.maxCols);
      print(excel.tables[tableName]!.maxRows);

      Map<ExcelHeaderEnum, int> mapExcelHeader = {
        for (var el in ExcelHeaderEnum.values)
          el: excel.tables[tableName]!.rows[0].map((e) => e?.value.toString() ?? '').toList().indexOf(el.name())
      };

      print(mapExcelHeader.toString());
      headerDataList.addAll(mapExcelHeader.keys.map((e) => e.name()));

      for (List<Data?> element in excel.tables[tableName]!.rows.sublist(1, 500)) {
        tilesDataList.add(mapExcelHeader.values.map((index) => element[index]?.value).toList());
      }
      setState(() {});
    }
    // print(DateTime.parse('2023-01-16T16:06:16.000'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: names,
              child: const Text('Press on me'),
            ),
          ),
          headerDataList.isNotEmpty
              ? Expanded(
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: headerDataList
                      .map((header) => DataColumn(
                    label: Expanded(
                      child: Text(
                        header,
                      ),
                    ),
                  ))
                      .toList(),
                  rows: tilesDataList
                      .map((tilesList) => DataRow(cells: tilesList.map((tile) => DataCell(Text('$tile'))).toList()))
                      .toList(),
                ),
              ),
            ),
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}
