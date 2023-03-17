import 'dart:developer';
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = '';

  void names() async {
    int count = 0;
    var file = 'example_data/Аудит заявок РФ_13.03.23.xlsx';
    var bytes = File(file).readAsBytesSync();
    Excel excel = Excel.decodeBytes(bytes);
    text = '[';
    for (var table in excel.tables.keys) {
      print(table); //sheet Name
      print(excel.tables[table]!.maxCols);
      print(excel.tables[table]!.maxRows);
      // for (List<Data?> row in excel.tables[table]!.rows) {
      //   for (var data in row) {
      //     print(data?.value);
      //     // print('$row');
      //   }
      // }
      for (Data? element in excel.tables[table]!.rows[0]) {
        // print(++count);

        if (element == null) continue;
        // log('${element.cellStyle}', name: '${element.value}');
        // log('${element?.cellStyle?.backgroundColor}' ?? '', name: '${element?.value}');
        // log('${element?.cellStyle?.props.last}' ?? '', name: '${element?.value}');

        if (element.cellStyle!.backgroundColor != 'none') {
          text += '\'${element.value}\',';
          log('-------- ОНО!!!' ?? '', name: '${element.value}');
        }
        print('$text]');
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    names();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: names,
                child: Text('Press on me'),
              ),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
