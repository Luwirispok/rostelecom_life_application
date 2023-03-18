import 'package:hive/hive.dart';
import 'package:rostelecom_life_application/enum/excel_headers_enum.dart';

// part 'hive_adap.g.dart';

@HiveType(typeId: 0)
class ApName {
  @HiveField(0)
  final String key;
  @HiveField(1)
  final List<OurData> ourdata;
  ApName({required this.key, required this.ourdata});
}

@HiveType(typeId: 1)
class OurData {
  @HiveField(0)
  final dynamic numberOrder;
  @HiveField(1)
  final dynamic client;
  @HiveField(2)
  final dynamic INN;
  @HiveField(3)
  final dynamic status;
  @HiveField(4)
  final dynamic dateOfEntryOfOrderInStatus;
  @HiveField(5)
  final dynamic service;
  @HiveField(6)
  final dynamic additionalSalesChannel;
  @HiveField(7)
  final dynamic dateOfApplicationRegistration;
  @HiveField(8)
  final dynamic dateOfRegistrationUnderTheOrder;
  @HiveField(9)
  final dynamic regOfOrderOnTVP;
  @HiveField(10)
  final dynamic checkTypeOfTVP;
  @HiveField(11)
  final dynamic availabilityOfTVP;
  @HiveField(12)
  final dynamic completionOfTVPCheck;
  @HiveField(13)
  final dynamic durationOfTVPCheck;
  @HiveField(14)
  final dynamic noOfClients;
  @HiveField(15)
  final dynamic dateOfSendingToAPTV;
  @HiveField(16)
  final dynamic endDateOfAPTVPlanned;
  @HiveField(17)
  final dynamic endDateOfAPTVActual;
  @HiveField(18)
  final dynamic durationOfAPTVStage;
  @HiveField(19)
  final dynamic dispatchDateToDo;
  @HiveField(20)
  final dynamic endDateToPlanned;
  @HiveField(21)
  final dynamic endDateToActual;
  @HiveField(22)
  final dynamic durationOfStageTo;
  OurData({
    required this.numberOrder,
    required this.INN,
    required this.status,
    required this.dateOfEntryOfOrderInStatus,
    required this.service,
    required this.additionalSalesChannel,
    required this.dateOfApplicationRegistration,
    required this.dateOfRegistrationUnderTheOrder,
    required this.regOfOrderOnTVP,
    required this.checkTypeOfTVP,
    required this.availabilityOfTVP,
    required this.completionOfTVPCheck,
    required this.durationOfTVPCheck,
    required this.noOfClients,
    required this.dateOfSendingToAPTV,
    required this.endDateOfAPTVPlanned,
    required this.endDateOfAPTVActual,
    required this.durationOfAPTVStage,
    required this.dispatchDateToDo,
    required this.endDateToPlanned,
    required this.endDateToActual,
    required this.durationOfStageTo,
    required this.client,
  });
}