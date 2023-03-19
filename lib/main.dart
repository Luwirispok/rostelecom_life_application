import 'dart:developer';
import 'dart:io';
import 'dart:math';
import 'package:hive/hive.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:rostelecom_life_application/data/entities/hive_adap.dart';
import 'package:rostelecom_life_application/presentation/about/about.dart';

import 'package:rostelecom_life_application/presentation/main_screen/ma_screen.dart';
import 'package:rostelecom_life_application/presentation/profile/profile.dart';
import 'package:rostelecom_life_application/presentation/upload_new_data/upload.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => MainScreenWidget(),
        '/about': (context) => AboutScreenWidget(),
        '/upload': (context) => UploadScreenWidget(),
        '/profile': (context) => ProfileScreenWidget(),
      },
      initialRoute: '/',
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

    // ProviderData.addNewData(keyname: keyname, ourData: ourData)
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
            // Text(text),
          ],
        ),
      ),
    );
  }
}

class ProviderData extends ChangeNotifier {
  // String? keyNameForApname;

  ///@showApName - Для отображения плашки данных из поиска
  ///
  ///*Подписываясь на это выражение мы отображаем то, что было запрошено пользователем
  ApName? showApName;

  ///@showApName - Для отображения плашки данных из поиска
  ///
  ///*Подписываясь на это выражение мы отображаем то, что было запрошено пользователем
  DateTime? lasOurData;

  ///@listApName - Для отображения массива данны
  ///
  ///*Подписываясь на это выражение мы получаем данные, которые пользовательно хочет просмотреть более детально.
  List<ApName> listApName = [];

  ///Добавить новые данные
  static addNewData({
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

  ///Перейти к выбранному элементу и просмотреть информацию подробнее.
  ///
  ///* Данные будут отправлены в массив listApName
  ///* Позже придется их оттуда достать
  tapToElemntByKey(keyname) async {
    listApName.clear();
    Box box = await Hive.openBox<ApName>('ANames');
    for (int i = 0; i <= box.length - 1; i++) {
      ApName apname = box.getAt(i);
      if (keyname == apname.key) {
        listApName.add(apname);
      }
    }
    notifyListeners();
    box.close();
  }

  ///Найти елемент в списке нашего HIVE
  ///
  ///* showApName - Находит элемент с последней записью
  findElemntByKey(keyname) async {
    showApName = null;
    Box box = await Hive.openBox<ApName>('ANames');
    for (int i = 0; i <= box.length - 1; i++) {
      ApName apname = box.getAt(i);
      if (keyname == apname.key) {
        for (int j = 0; j <= apname.ourdata.length - 1; j++) {
          DateTime ourdata =
              DateTime.parse(apname.ourdata[j].dateOfEntryOfOrderInStatus);
          if (lasOurData != null) {
            if (ourdata.isAfter(lasOurData!)) {
              lasOurData = ourdata;
              showApName = apname;
            }
          } else {
            lasOurData = ourdata;
          }
        }
      }
    }
    notifyListeners();
    box.close();
  }

  // sortElementsToMoreInfo(List<ApName> listApName) async {
  //   for (int i = 0; i <= listApName.length - 1; i++) {
  //     List<OurData> ourdataList = listApName[i].ourdata;
  //     for (int j = 0; j <= ourdataList.length - 1; j++) {}
  //   }
  // }
}
// else {
//   box.add(
//     ApName(key: keyname, ourdata: [ourData]),
//   );
// apname.key;
// List<OurData> ourdata = apname.ourdata;
// for (int j = 0; j <= ourdata.length - 1; j++) {
//   ourdata.length;
//   print(ourdata.length);
//   ourdata;
//   print("Inn:" + ourdata[j].INN);
// }
