enum ExcelHeaderEnum {
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
}

extension ExcelHeaderExtension on ExcelHeaderEnum {
  String name() {
    switch (this) {
      case ExcelHeaderEnum.numberOrder:
        return 'Номер заявки';
      case ExcelHeaderEnum.client:
        return 'Клиент*';
      case ExcelHeaderEnum.INN:
        return 'ИНН';
      case ExcelHeaderEnum.status:
        return 'Статус';
      case ExcelHeaderEnum.dateOfEntryOfOrderInStatus:
        return 'Дата входа заявки в статус';
      case ExcelHeaderEnum.service:
        return 'Услуга';
      case ExcelHeaderEnum.additionalSalesChannel:
        return 'Доп. канал продаж';
      case ExcelHeaderEnum.dateOfApplicationRegistration:
        return 'Дата регистрации заявки';
      case ExcelHeaderEnum.dateOfRegistrationUnderTheOrder:
        return 'Дата регистрации под заявки';
      case ExcelHeaderEnum.regOfOrderOnTVP:
        return 'Рег. наряда на ТВП';
      case ExcelHeaderEnum.checkTypeOfTVP:
        return 'Тип проверки ТВП';
      case ExcelHeaderEnum.availabilityOfTVP:
        return 'Наличие ТВП';
      case ExcelHeaderEnum.completionOfTVPCheck:
        return 'Завершение проверки ТВП';
      case ExcelHeaderEnum.durationOfTVPCheck:
        return 'Длит. проверки ТВП';
      case ExcelHeaderEnum.noOfClients:
        return '№ клиентский СУС';
      case ExcelHeaderEnum.dateOfSendingToAPTV:
        return 'Дата отправки на АПТВ';
      case ExcelHeaderEnum.endDateOfAPTVPlanned:
        return 'Дата окончания АПТВ планируемая';
      case ExcelHeaderEnum.endDateOfAPTVActual:
        return 'Дата окончания АПТВ фактическая';
      case ExcelHeaderEnum.durationOfAPTVStage:
        return 'Длительность этапа АПТВ';
      case ExcelHeaderEnum.dispatchDateToDo:
        return 'Дата отправки на ДО';
      case ExcelHeaderEnum.endDateToPlanned:
        return 'Дата окончания ДО планируемая';
      case ExcelHeaderEnum.endDateToActual:
        return 'Дата окончания ДО фактическая';
      case ExcelHeaderEnum.durationOfStageTo:
        return 'Длительность этапа ДО';
    }
  }
}