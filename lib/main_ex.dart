import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:rostelecom_life_application/data/entities/hive_adap.dart';
import 'package:rostelecom_life_application/data/local_data_source/drag_and_drop_file.dart';
import 'package:rostelecom_life_application/enum/excel_headers_enum.dart';

void main() async {
  await Hive.initFlutter().then((_) {
    Hive.registerAdapter(OurDataAdapter());
    Hive.registerAdapter(ApNameAdapter());
  });

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
  // String text = '';

  void names() async {
    Box box = await Hive.openBox<ApName>('ANames');

    print(box.length);

    for (int i = 0; i <= box.length - 1; i++) {
      ApName apname = box.getAt(i);
      apname.key;
      List<OurData> ourdata = apname.ourdata;
      apname;
      ourdata;
      for (int j = 0; j <= ourdata.length - 1; j++) {
        ourdata.length;
        print(ourdata.length);
        ourdata;
        print("Inn:" + ourdata[j].INN);
      }
      print(apname);
    }
    // for(int i, i<=)
    // box.get(key)
    // box.add(ApName(key: 'mick', ourdata: [
    //   OurData(
    //     numberOrder: 'numbesdraddsadassdasddsOrder',
    //     INN: 'IsdNadaasdasdsdN',
    //     status: 'stasasdaasdasdasdadtus',
    //     dateOfEntryOfOrderInStatus: 'dateOfdsEntaasdasdsdasdryOfOrderInStatus',
    //     service: 'sasdasdarasdsavice',
    //     additionalSalesChannel: 'additionadslSalesChannel',
    //     dateOfApplicationRegistration: 'dateOfsdApplicationRegistration',
    //     dateOfRegistrationUnderTheOrder: 'dateOfsdRegistrationUnderTheOrder',
    //     regOfOrderOnTVP: 'regOfOrsdderOnTVP',
    //     checkTypeOfTVP: 'checkTypesdOfTadsasdaVP',
    //     availabilityOfTVP: 'availabilsasdasddityOfTVP',
    //     completionOfTVPCheck: 'completsasdasdionOfTVPCheck',
    //     durationOfTVPCheck: 'durationOsdfTVPCheck',
    //     noOfClients: 'noOfClsdients',
    //     dateOfSendingToAPTV: 'datsdeOasdasdafSendingToAPTV',
    //     endDateOfAPTVPlanned: 'endDsdaasdasdasteOfAPTVPlanned',
    //     endDateOfAPTVActual: 'endDsdaasdasdteOfAPTVActual',
    //     durationOfAPTVStage: 'durasdtasdasdionOfAPTVStage',
    //     dispatchDateToDo: 'dispatcsdasdasdhDateToDo',
    //     endDateToPlanned: 'endDatesdToPlanned',
    //     endDateToActual: 'asdasda',
    //     durationOfStageTo: 'duratiasdasddsonOfStageTo',
    //     client: 'asdasdasda',
    //   ),
    // ]));

    var values = await box.values.toList();
    print(values);
    // int count = 0;
    // var file = 'example_data/Аудит заявок РФ_13.03.23.xlsx';
    // var bytes = File(file).readAsBytesSync();
    // Excel excel = Excel.decodeBytes(bytes);
    // text = '[';
    // for (var table in excel.tables.keys) {
    //   print(table); //sheet Name
    //   print(excel.tables[table]!.maxCols);
    //   print(excel.tables[table]!.maxRows);
    //   // for (List<Data?> row in excel.tables[table]!.rows) {
    //   //   for (var data in row) {
    //   //     print(data?.value);
    //   //     // print('$row');
    //   //   }
    //   // }
    //   for (Data? element in excel.tables[table]!.rows[0]) {
    //     // print(++count);

    //     if (element == null) continue;
    //     // log('${element.cellStyle}', name: '${element.value}');
    //     // log('${element?.cellStyle?.backgroundColor}' ?? '', name: '${element?.value}');
    //     // log('${element?.cellStyle?.props.last}' ?? '', name: '${element?.value}');

    //     if (element.cellStyle!.backgroundColor != 'none') {
    //       text += '\'${element.value}\',';
    //       log('-------- ОНО!!!', name: '${element.value}');
    //     }
    //     print('$text]');
    //     setState(() {});
    //   }
    // }
  }

  List<OurData> listTileData = [];

  void dddDef() {
    String file = 'example_data/Аудит заявок РФ_13.03.23.xlsx';
    listTileData = DragAndDropFile.getDataFile(file: File(file)).sublist(0, 200);
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
              onPressed: dddDef,
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
                      .map((tilesList) => DataRow(
                      cells: tilesList.toList().map((tile) => DataCell(Text('$tile'))).toList()))
                      .toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProviderData extends ChangeNotifier {
  addNewData({
    required String keyname,
    required OurData ourData,
  }) async {
    Box box = await Hive.openBox<ApName>('ANames');
    for (int i = 0; i <= box.length - 1; i++) {
      ApName apname = box.getAt(i);
      if (keyname == apname.key) {
        apname.ourdata.add(ourData);
      } else {
        box.add(
          ApName(key: keyname, ourdata: [ourData]),
        );
      }
    }
    box.close();
  }

// findElemntByKey(keyname) async {
//   Box box = await Hive.openBox<ApName>('ANames');
//   for (int i = 0; i <= box.length - 1; i++) {
//     ApName apname = box.getAt(i);
//     List<OurData> ourdata = apname.ourdata;
//     for (int j = 0; j <= ourdata.length - 1; j++) {
//       ourdata.length;
//       print(ourdata.length);
//       ourdata;
//       print("Inn:" + ourdata[j].INN);
//     }
//   }
// }
}
