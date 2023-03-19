import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rostelecom_life_application/data/entities/hive_adap.dart';

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
    required String keyName,
    required OurData ourData,
  }) async {
    Box box = await Hive.openBox<List<OurData>>('OurDataTable');
    if (box.length == 0) {
      await box.put(keyName, [ourData]);
      return;
    }

    if (box.containsKey(keyName)) {
      if (box.get(keyName).contains(ourData)) return;
      await box.get(keyName).add(ourData);
    } else {
      await box.put(keyName, [ourData]);
    }
    await box.close();
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