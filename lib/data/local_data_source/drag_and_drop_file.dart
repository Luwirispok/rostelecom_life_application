import 'dart:io';

import 'package:excel/excel.dart';
import 'package:rostelecom_life_application/data/entities/hive_adap.dart';
import 'package:rostelecom_life_application/data/mappers/list_data_to_our_data_map.dart';
import 'package:rostelecom_life_application/enum/excel_headers_enum.dart';

class DragAndDropFile {
  static List<OurData> getDataFile({required File file}) {
    List<OurData> listData = [];
    var bytes = file.readAsBytesSync();
    Excel excel = Excel.decodeBytes(bytes);
    for (var tableName in excel.tables.keys) {
      print(tableName); //sheet Name
      print(excel.tables[tableName]!.maxCols);
      print(excel.tables[tableName]!.maxRows);

      Map<ExcelHeaderEnum, int> mapExcelHeader = {
        for (var el in ExcelHeaderEnum.values)
          el: excel.tables[tableName]!.rows[0].map((e) => e?.value.toString() ?? '').toList().indexOf(el.name())
      };
      for (List<Data?> element in excel.tables[tableName]!.rows.sublist(1)) {
        listData.add(ListDataToOurDataMap.getData(mapExcelHeader.values
            .map(
              (index) => element[index]?.value,
        )
            .toList()));
      }
    }
    return listData;
  }
}
