import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:rostelecom_life_application/data/entities/hive_adap.dart';
import 'package:rostelecom_life_application/data/local_data_source/drag_and_drop_file.dart';
import 'package:rostelecom_life_application/data/local_data_source/provider_data.dart';
import 'package:rostelecom_life_application/enum/excel_headers_enum.dart';

List<OurData> listOurData = [];

void main() async {
  await Hive.initFlutter().then((_) {
    Hive.registerAdapter(OurDataAdapter());
    Hive.registerAdapter(ApNameAdapter());
  });
  log('Парсинг из эксельки');
  listOurData = DragAndDropFile.getDataFile(file: File('example_data/Аудит заявок РФ_14.03.23.xlsx'));
  log('Данные распарсены');
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
      home: ChangeNotifierProvider(
        create: (_) => ProviderData(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<OurData> listTileData = [];

  @override
  void initState() {

    super.initState();
  }

  void names() async {
    // Box box = await Hive.openBox<ApName>('ANames');
    Box box = await Hive.openBox<List<OurData>>('OurDataTable');
    box.clear();
    for (OurData element in listOurData) {
      await ProviderData.addNewData(keyName: element.numberOrder.toString(), ourData: element);
    }
    log('Данные занесены в hive');
    log(box.length.toString(), name: 'hive');
    listTileData.clear();
    // for (int i = 0; i < box.length; i++) {
    for (int i = 0; i < 500; i++) {
      // ApName apname = box.getAt(i);
      // listTileData.addAll(apname.ourdata);
      List<OurData> setOurDate = box.getAt(i);
      listTileData
          .addAll(setOurDate.length > 1 ? setOurDate.map((e) => e.copyWith(numberOrder: '---- ${e.numberOrder}')) : setOurDate);
    }
    log('Данные получены из hive');
    box.close();
    setState(() {});
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
          Expanded(
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: ExcelHeaderEnum.values
                      .map((header) => DataColumn(
                            label: Expanded(
                              child: Text(
                                header.name(),
                              ),
                            ),
                          ))
                      .toList(),
                  rows: listTileData
                      .map((tilesList) =>
                          DataRow(cells: tilesList.toList().map((tile) => DataCell(Text('$tile'))).toList()))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}