import 'package:hive/hive.dart';

part 'hive_adap.g.dart';

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

  Map<String, dynamic> toMap() {
    return {
      'numberOrder': this.numberOrder,
      'client': this.client,
      'INN': this.INN,
      'status': this.status,
      'dateOfEntryOfOrderInStatus': this.dateOfEntryOfOrderInStatus,
      'service': this.service,
      'additionalSalesChannel': this.additionalSalesChannel,
      'dateOfApplicationRegistration': this.dateOfApplicationRegistration,
      'dateOfRegistrationUnderTheOrder': this.dateOfRegistrationUnderTheOrder,
      'regOfOrderOnTVP': this.regOfOrderOnTVP,
      'checkTypeOfTVP': this.checkTypeOfTVP,
      'availabilityOfTVP': this.availabilityOfTVP,
      'completionOfTVPCheck': this.completionOfTVPCheck,
      'durationOfTVPCheck': this.durationOfTVPCheck,
      'noOfClients': this.noOfClients,
      'dateOfSendingToAPTV': this.dateOfSendingToAPTV,
      'endDateOfAPTVPlanned': this.endDateOfAPTVPlanned,
      'endDateOfAPTVActual': this.endDateOfAPTVActual,
      'durationOfAPTVStage': this.durationOfAPTVStage,
      'dispatchDateToDo': this.dispatchDateToDo,
      'endDateToPlanned': this.endDateToPlanned,
      'endDateToActual': this.endDateToActual,
      'durationOfStageTo': this.durationOfStageTo,
    };
  }

  List<dynamic> toList() {
    return [
      numberOrder,
      client,
      INN,
      status,
      dateOfEntryOfOrderInStatus,
      service,
      additionalSalesChannel,
      dateOfApplicationRegistration,
      dateOfRegistrationUnderTheOrder,
      regOfOrderOnTVP,
      checkTypeOfTVP,
      availabilityOfTVP,
      completionOfTVPCheck,
      durationOfTVPCheck,
      noOfClients,
      dateOfSendingToAPTV,
      endDateOfAPTVPlanned,
      endDateOfAPTVActual,
      durationOfAPTVStage,
      dispatchDateToDo,
      endDateToPlanned,
      endDateToActual,
      durationOfStageTo,
    ];
  }

  factory OurData.fromMap(Map<String, dynamic> map) {
    return OurData(
      numberOrder: map['numberOrder'] as dynamic,
      client: map['client'] as dynamic,
      INN: map['INN'] as dynamic,
      status: map['status'] as dynamic,
      dateOfEntryOfOrderInStatus: map['dateOfEntryOfOrderInStatus'] as dynamic,
      service: map['service'] as dynamic,
      additionalSalesChannel: map['additionalSalesChannel'] as dynamic,
      dateOfApplicationRegistration: map['dateOfApplicationRegistration'] as dynamic,
      dateOfRegistrationUnderTheOrder: map['dateOfRegistrationUnderTheOrder'] as dynamic,
      regOfOrderOnTVP: map['regOfOrderOnTVP'] as dynamic,
      checkTypeOfTVP: map['checkTypeOfTVP'] as dynamic,
      availabilityOfTVP: map['availabilityOfTVP'] as dynamic,
      completionOfTVPCheck: map['completionOfTVPCheck'] as dynamic,
      durationOfTVPCheck: map['durationOfTVPCheck'] as dynamic,
      noOfClients: map['noOfClients'] as dynamic,
      dateOfSendingToAPTV: map['dateOfSendingToAPTV'] as dynamic,
      endDateOfAPTVPlanned: map['endDateOfAPTVPlanned'] as dynamic,
      endDateOfAPTVActual: map['endDateOfAPTVActual'] as dynamic,
      durationOfAPTVStage: map['durationOfAPTVStage'] as dynamic,
      dispatchDateToDo: map['dispatchDateToDo'] as dynamic,
      endDateToPlanned: map['endDateToPlanned'] as dynamic,
      endDateToActual: map['endDateToActual'] as dynamic,
      durationOfStageTo: map['durationOfStageTo'] as dynamic,
    );
  }

  OurData copyWith({
    dynamic? numberOrder,
    dynamic? client,
    dynamic? INN,
    dynamic? status,
    dynamic? dateOfEntryOfOrderInStatus,
    dynamic? service,
    dynamic? additionalSalesChannel,
    dynamic? dateOfApplicationRegistration,
    dynamic? dateOfRegistrationUnderTheOrder,
    dynamic? regOfOrderOnTVP,
    dynamic? checkTypeOfTVP,
    dynamic? availabilityOfTVP,
    dynamic? completionOfTVPCheck,
    dynamic? durationOfTVPCheck,
    dynamic? noOfClients,
    dynamic? dateOfSendingToAPTV,
    dynamic? endDateOfAPTVPlanned,
    dynamic? endDateOfAPTVActual,
    dynamic? durationOfAPTVStage,
    dynamic? dispatchDateToDo,
    dynamic? endDateToPlanned,
    dynamic? endDateToActual,
    dynamic? durationOfStageTo,
  }) {
    return OurData(
      numberOrder: numberOrder ?? this.numberOrder,
      client: client ?? this.client,
      INN: INN ?? this.INN,
      status: status ?? this.status,
      dateOfEntryOfOrderInStatus: dateOfEntryOfOrderInStatus ?? this.dateOfEntryOfOrderInStatus,
      service: service ?? this.service,
      additionalSalesChannel: additionalSalesChannel ?? this.additionalSalesChannel,
      dateOfApplicationRegistration: dateOfApplicationRegistration ?? this.dateOfApplicationRegistration,
      dateOfRegistrationUnderTheOrder: dateOfRegistrationUnderTheOrder ?? this.dateOfRegistrationUnderTheOrder,
      regOfOrderOnTVP: regOfOrderOnTVP ?? this.regOfOrderOnTVP,
      checkTypeOfTVP: checkTypeOfTVP ?? this.checkTypeOfTVP,
      availabilityOfTVP: availabilityOfTVP ?? this.availabilityOfTVP,
      completionOfTVPCheck: completionOfTVPCheck ?? this.completionOfTVPCheck,
      durationOfTVPCheck: durationOfTVPCheck ?? this.durationOfTVPCheck,
      noOfClients: noOfClients ?? this.noOfClients,
      dateOfSendingToAPTV: dateOfSendingToAPTV ?? this.dateOfSendingToAPTV,
      endDateOfAPTVPlanned: endDateOfAPTVPlanned ?? this.endDateOfAPTVPlanned,
      endDateOfAPTVActual: endDateOfAPTVActual ?? this.endDateOfAPTVActual,
      durationOfAPTVStage: durationOfAPTVStage ?? this.durationOfAPTVStage,
      dispatchDateToDo: dispatchDateToDo ?? this.dispatchDateToDo,
      endDateToPlanned: endDateToPlanned ?? this.endDateToPlanned,
      endDateToActual: endDateToActual ?? this.endDateToActual,
      durationOfStageTo: durationOfStageTo ?? this.durationOfStageTo,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is OurData &&
              runtimeType == other.runtimeType &&
              numberOrder == other.numberOrder &&
              client == other.client &&
              INN == other.INN &&
              status == other.status &&
              dateOfEntryOfOrderInStatus == other.dateOfEntryOfOrderInStatus &&
              service == other.service &&
              additionalSalesChannel == other.additionalSalesChannel &&
              dateOfApplicationRegistration == other.dateOfApplicationRegistration &&
              dateOfRegistrationUnderTheOrder == other.dateOfRegistrationUnderTheOrder &&
              regOfOrderOnTVP == other.regOfOrderOnTVP &&
              checkTypeOfTVP == other.checkTypeOfTVP &&
              availabilityOfTVP == other.availabilityOfTVP &&
              completionOfTVPCheck == other.completionOfTVPCheck &&
              durationOfTVPCheck == other.durationOfTVPCheck &&
              noOfClients == other.noOfClients &&
              dateOfSendingToAPTV == other.dateOfSendingToAPTV &&
              endDateOfAPTVPlanned == other.endDateOfAPTVPlanned &&
              endDateOfAPTVActual == other.endDateOfAPTVActual &&
              durationOfAPTVStage == other.durationOfAPTVStage &&
              dispatchDateToDo == other.dispatchDateToDo &&
              endDateToPlanned == other.endDateToPlanned &&
              endDateToActual == other.endDateToActual &&
              durationOfStageTo == other.durationOfStageTo;

  @override
  int get hashCode =>
      numberOrder.hashCode ^
      client.hashCode ^
      INN.hashCode ^
      status.hashCode ^
      dateOfEntryOfOrderInStatus.hashCode ^
      service.hashCode ^
      additionalSalesChannel.hashCode ^
      dateOfApplicationRegistration.hashCode ^
      dateOfRegistrationUnderTheOrder.hashCode ^
      regOfOrderOnTVP.hashCode ^
      checkTypeOfTVP.hashCode ^
      availabilityOfTVP.hashCode ^
      completionOfTVPCheck.hashCode ^
      durationOfTVPCheck.hashCode ^
      noOfClients.hashCode ^
      dateOfSendingToAPTV.hashCode ^
      endDateOfAPTVPlanned.hashCode ^
      endDateOfAPTVActual.hashCode ^
      durationOfAPTVStage.hashCode ^
      dispatchDateToDo.hashCode ^
      endDateToPlanned.hashCode ^
      endDateToActual.hashCode ^
      durationOfStageTo.hashCode;
}

// class OurDataAdapter extends TypeAdapter<OurData> {
//   @override
//   int get typeId => 1;

//   @override
//   OurData read(BinaryReader reader) {
//     return read(reader);
//   }

//   @override
//   void write(BinaryWriter writer, OurData obj) {
//     writer.write(obj.client);
//   }
// }


// class ApNameAdapter extends TypeAdapter<ApName> {
//   @override
//   int get typeId => 0;

//   @override
//   ApName read(BinaryReader reader) {
//     // return read(reader);
//     String key = reader.readString();
//     List<OurData> ourData = reader.read();
//     return ApName(key: key, ourdata: ourData);
//   }

//   @override
//   void write(BinaryWriter writer, ApName obj) {
//     writer.writeString(obj.key);
//     writer.writeList(obj.ourdata);
//   }
// }