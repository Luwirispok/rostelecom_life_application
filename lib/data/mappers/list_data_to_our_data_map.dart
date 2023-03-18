import 'package:rostelecom_life_application/data/entities/hive_adap.dart';

class ListDataToOurDataMap {
  static OurData getData(List<dynamic> listDataValue) {
    return OurData(
      numberOrder: listDataValue[0],
      client: listDataValue[1],
      INN: listDataValue[2],
      status: listDataValue[3],
      dateOfEntryOfOrderInStatus: listDataValue[4],
      service: listDataValue[5],
      additionalSalesChannel: listDataValue[6],
      dateOfApplicationRegistration: listDataValue[7],
      dateOfRegistrationUnderTheOrder: listDataValue[8],
      regOfOrderOnTVP: listDataValue[9],
      checkTypeOfTVP: listDataValue[10],
      availabilityOfTVP: listDataValue[11],
      completionOfTVPCheck: listDataValue[12],
      durationOfTVPCheck: listDataValue[13],
      noOfClients: listDataValue[14],
      dateOfSendingToAPTV: listDataValue[15],
      endDateOfAPTVPlanned: listDataValue[16],
      endDateOfAPTVActual: listDataValue[17],
      durationOfAPTVStage: listDataValue[18],
      dispatchDateToDo: listDataValue[19],
      endDateToPlanned: listDataValue[20],
      endDateToActual: listDataValue[21],
      durationOfStageTo: listDataValue[22],
    );
  }
}