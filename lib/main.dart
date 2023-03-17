import 'dart:io';

import 'package:excel/excel.dart';
import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void names() async {
      var file = 'C:/Users/Mikail/Desktop/audit.xlsx';
      var bytes = await File(file).readAsBytesSync();
      Excel excel = await Excel.decodeBytes(bytes);

      for (var table in excel.tables.keys) {
        print(table); //sheet Name
        print(excel.tables[table]!.maxCols);
        print(excel.tables[table]!.maxRows);
        for (var row in excel.tables[table]!.rows) {
          for (var data in row) {
            print(data?.value);
          }

          // print('$row');
        }
      }
    }

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: ElevatedButton(
          onPressed: names,
          child: Text('Press on me'),
        )),
      ],
    ));
  }
}
