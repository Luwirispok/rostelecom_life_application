// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adap.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ApNameAdapter extends TypeAdapter<ApName> {
  @override
  final int typeId = 0;

  @override
  ApName read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ApName(
      key: fields[0] as String,
      ourdata: (fields[1] as List).cast<OurData>(),
    );
  }

  @override
  void write(BinaryWriter writer, ApName obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.ourdata);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApNameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OurDataAdapter extends TypeAdapter<OurData> {
  @override
  final int typeId = 1;

  @override
  OurData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OurData(
      numberOrder: fields[0] as dynamic,
      INN: fields[2] as dynamic,
      status: fields[3] as dynamic,
      dateOfEntryOfOrderInStatus: fields[4] as dynamic,
      service: fields[5] as dynamic,
      additionalSalesChannel: fields[6] as dynamic,
      dateOfApplicationRegistration: fields[7] as dynamic,
      dateOfRegistrationUnderTheOrder: fields[8] as dynamic,
      regOfOrderOnTVP: fields[9] as dynamic,
      checkTypeOfTVP: fields[10] as dynamic,
      availabilityOfTVP: fields[11] as dynamic,
      completionOfTVPCheck: fields[12] as dynamic,
      durationOfTVPCheck: fields[13] as dynamic,
      noOfClients: fields[14] as dynamic,
      dateOfSendingToAPTV: fields[15] as dynamic,
      endDateOfAPTVPlanned: fields[16] as dynamic,
      endDateOfAPTVActual: fields[17] as dynamic,
      durationOfAPTVStage: fields[18] as dynamic,
      dispatchDateToDo: fields[19] as dynamic,
      endDateToPlanned: fields[20] as dynamic,
      endDateToActual: fields[21] as dynamic,
      durationOfStageTo: fields[22] as dynamic,
      client: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, OurData obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.numberOrder)
      ..writeByte(1)
      ..write(obj.client)
      ..writeByte(2)
      ..write(obj.INN)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.dateOfEntryOfOrderInStatus)
      ..writeByte(5)
      ..write(obj.service)
      ..writeByte(6)
      ..write(obj.additionalSalesChannel)
      ..writeByte(7)
      ..write(obj.dateOfApplicationRegistration)
      ..writeByte(8)
      ..write(obj.dateOfRegistrationUnderTheOrder)
      ..writeByte(9)
      ..write(obj.regOfOrderOnTVP)
      ..writeByte(10)
      ..write(obj.checkTypeOfTVP)
      ..writeByte(11)
      ..write(obj.availabilityOfTVP)
      ..writeByte(12)
      ..write(obj.completionOfTVPCheck)
      ..writeByte(13)
      ..write(obj.durationOfTVPCheck)
      ..writeByte(14)
      ..write(obj.noOfClients)
      ..writeByte(15)
      ..write(obj.dateOfSendingToAPTV)
      ..writeByte(16)
      ..write(obj.endDateOfAPTVPlanned)
      ..writeByte(17)
      ..write(obj.endDateOfAPTVActual)
      ..writeByte(18)
      ..write(obj.durationOfAPTVStage)
      ..writeByte(19)
      ..write(obj.dispatchDateToDo)
      ..writeByte(20)
      ..write(obj.endDateToPlanned)
      ..writeByte(21)
      ..write(obj.endDateToActual)
      ..writeByte(22)
      ..write(obj.durationOfStageTo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OurDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
