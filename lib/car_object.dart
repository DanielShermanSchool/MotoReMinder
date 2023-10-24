import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:moto_re_minder/progress_object.dart';

class Car {

  ImageProvider? imageProvider;
  late num mileage;
  late int year;
  late String make;
  late String model;
  late String trim;
  late String nickname;
  num lastChangedEngineOilAndFilter = 0;
  late num intervalEngineOilAndFilter;
  num lastChangedTireRotation = 0;
  late num intervalTireRotation;
  num lastChangedBrakeInspection = 0;
  late num intervalBrakeInspection;
  num lastChangedEngineCoolant = 0;
  late num intervalEngineCoolant;
  num lastChangedAirFilter = 0;
  late num intervalAirFilter;
  num lastChangedSparkPlugs = 0;
  late num intervalSparkPlugs;
  num lastChangedTimingBeltChain = 0;
  late num intervalTimingBeltChain;
  num lastChangedWaterPumpInspection = 0;
  late num intervalWaterPumpInspection;
  num lastChangedDriveBeltInspection = 0;
  late num  intervalDriveBeltInspection;
  num lastChangedTransmissionFluid = 0;
  late num  intervalTransmissionFluid;
  num lastChangedBrakeFluid = 0;
  late num  intervalBrakeFluid;
  num lastChangedCabinAirFilter = 0;
  late num  intervalCabinAirFilter;
  num lastChangedFuelFilter = 0;
  late num intervalFuelFilter;
  num lastChangedFuelPump = 0;
  late num intervalFuelPump;
  num lastSuspensionInspection = 0; 
  late num intervalSuspensionInspection;
  num lastChangedTires = 0;
  late num intervalTires;
  num lastChangedTransmissionFilter = 0;
  late num intervalTransFilter;
  

 Car(ImageProvider? imageProvider, 
     num mileage, 
    int year, 
    String make, 
    String model, 
    String trim, 
    String nickname, 
    num intervalEngineOilAndFilter, 
    num intervalTireRotation, 
    num intervalBrakeInspection, 
    num intervalEngineCoolant, 
    num intervalAirFilter, 
    num intervalSparkPlugs, 
    num intervalTimingBeltChain, 
    num intervalWaterPumpInspection, 
    num intervalDriveBeltInspection, 
    num intervalTransmissionFluid, 
    num intervalTransfilter,
    num intervalBrakeFluid, 
    num intervalCabinAirFilter, 
    num intervalFuelFilter, 
    num intervalFuelPump, 
    num intervalSuspensionInspection,
    num intervalTires,
    
    [num lastChangedEngineOilAndFilter = 0, 
    num lastChangedTireRotation = 0, 
    num lastChangedBrakeInspection = 0, 
    num lastChangedEngineCoolant = 0, 
    num lastChangedAirFilter = 0, 
    num lastChangedSparkPlugs = 0, 
    num lastChangedTimingBeltChain = 0, 
    num lastChangedWaterPumpInspection = 0, 
    num lastChangedDriveBeltInspection = 0, 
    num lastChangedTransmissionFluid = 0, 
    num lastChangedTransFilter = 0,
    num lastChangedBrakeFluid = 0, 
    num lastChangedCabinAirFilter = 0, 
    num lastChangedFuelFilter = 0, 
    num lastChangedFuelPump = 0, 
    num lastSuspensionInspection = 0,
    num lastChangedTires = 0
    ])
{
    this.imageProvider = imageProvider;
    this.mileage = mileage;
    this.year = year;
    this.make = make;
    this.model = model;
    this.trim = trim;
    this.nickname = nickname;
    this.lastChangedEngineOilAndFilter = lastChangedEngineOilAndFilter;
    this.intervalEngineOilAndFilter = intervalEngineOilAndFilter;
    this.lastChangedTireRotation = lastChangedTireRotation;
    this.intervalTireRotation = intervalTireRotation;
    this.lastChangedBrakeInspection = lastChangedBrakeInspection;
    this.intervalBrakeInspection = intervalBrakeInspection;
    this.lastChangedEngineCoolant = lastChangedEngineCoolant;
    this.intervalEngineCoolant = intervalEngineCoolant;
    this.lastChangedAirFilter = lastChangedAirFilter;
    this.intervalAirFilter = intervalAirFilter;
    this.lastChangedSparkPlugs = lastChangedSparkPlugs;
    this.intervalSparkPlugs = intervalSparkPlugs;
    this.lastChangedTimingBeltChain = lastChangedTimingBeltChain;
    this.intervalTimingBeltChain = intervalTimingBeltChain;
    this.lastChangedWaterPumpInspection = lastChangedWaterPumpInspection;
    this.intervalWaterPumpInspection = intervalWaterPumpInspection;
    this.lastChangedDriveBeltInspection = lastChangedDriveBeltInspection;
    this.intervalDriveBeltInspection = intervalDriveBeltInspection;
    this.lastChangedTransmissionFluid = lastChangedTransmissionFluid;
    this.intervalTransmissionFluid = intervalTransmissionFluid;
    this.lastChangedBrakeFluid = lastChangedBrakeFluid;
    this.intervalBrakeFluid = intervalBrakeFluid;
    this.lastChangedCabinAirFilter = lastChangedCabinAirFilter;
    this.intervalCabinAirFilter = intervalCabinAirFilter;
    this.lastChangedFuelFilter = lastChangedFuelFilter;
    this.intervalFuelFilter = intervalFuelFilter;
    this.lastChangedFuelPump = lastChangedFuelPump;
    this.intervalFuelPump = intervalFuelPump;
    this.lastSuspensionInspection = lastSuspensionInspection;
    this.intervalSuspensionInspection = intervalSuspensionInspection;
    this.lastChangedTires = lastChangedTires;
    this.intervalTires = intervalTires;
    this.lastChangedTransmissionFilter = lastChangedTransFilter;
    this.intervalTransFilter = intervalTransfilter;
}

  // Getters for percent value
  num get oilChangeProgress {
    progress_object oilChangeProg = new progress_object(
        this.mileage - this.lastChangedEngineOilAndFilter,
        this.intervalEngineOilAndFilter);
        num progress = oilChangeProg.progressPercentage;
    return progress;
  }

  num get tireRotationProgress {
    progress_object tireRotationProg = new progress_object(
        this.mileage - this.lastChangedTireRotation, 
        this.intervalTireRotation);
        num progress = tireRotationProg.progressPercentage;
    return progress;
  }

  num get brakeInspectionProgress {
    progress_object brakeInspectionProg = new progress_object(
        this.mileage - this.lastChangedBrakeInspection,
        this.intervalBrakeInspection);
        num progress = brakeInspectionProg.progressPercentage;
    return progress;
  }

  num get brakeFluidProgress {
    progress_object brakeFluidProg = new progress_object(
        this.mileage - this.lastChangedBrakeFluid, this.intervalBrakeFluid);
        num progress = brakeFluidProg.progressPercentage;
    return progress;
  }

  num get engineCoolantChangeProgress {
    progress_object engineCoolantChangeProg = new progress_object(
        this.mileage - this.lastChangedEngineCoolant,
        this.intervalEngineCoolant);
        num progress = engineCoolantChangeProg.progressPercentage;
    return progress;
  }

  num get airFilterProgress {
    progress_object airFilerProg = new progress_object(
        this.mileage - this.lastChangedAirFilter, this.intervalAirFilter);
        num progress = airFilerProg.progressPercentage;
    return progress;
  }

  num get sparkPlugProgress {
    progress_object sparkPlugProg = new progress_object(
        this.mileage - this.lastChangedSparkPlugs, this.intervalSparkPlugs);
        num progress = sparkPlugProg.progressPercentage;
    return progress;
  }

  num get timingBeltChainProgress {
    progress_object timingBeltChainProg = new progress_object(
        this.mileage - this.lastChangedTimingBeltChain,
        this.intervalTimingBeltChain);
        num progress = timingBeltChainProg.progressPercentage;
    return progress;
  }

  num get waterPumpInspectionProgress {
    progress_object waterPumpInspectionProg = new progress_object(
        this.mileage - this.lastChangedWaterPumpInspection,
        this.intervalWaterPumpInspection);
        num progress = waterPumpInspectionProg.progressPercentage;
    return progress;
  }

  num get driveBeltInspectionProgress {
    progress_object driveBeltInspectionProg = new progress_object(
        this.mileage - this.lastChangedDriveBeltInspection,
        this.intervalDriveBeltInspection);
        num progress = driveBeltInspectionProg.progressPercentage;
    return progress;
  }

  num get transmissionFluidProgress {
    progress_object transmissionFluidProg = new progress_object(
        this.mileage - this.lastChangedTransmissionFluid,
        this.intervalTransmissionFluid);
        num progress = transmissionFluidProg.progressPercentage;
    return progress;
  }

  num get transmissionFilterProgress {
    progress_object transmissionFilterProg = new progress_object(
        this.mileage - this.lastChangedTransmissionFilter,
        this.intervalTransFilter);
        num progress = transmissionFilterProg.progressPercentage;
    return progress;
  }

  num get cabinAirFilterProgress {
    progress_object cabinAirFilterProg = new progress_object(
        this.mileage - this.lastChangedCabinAirFilter,
        this.intervalCabinAirFilter);
        num progress = cabinAirFilterProg.progressPercentage;
    return progress;
  }

  num get fuelFilterProgress {
    progress_object fuelFilterProg = new progress_object(
        this.mileage - this.lastChangedFuelFilter, this.intervalFuelFilter);
        num progress = fuelFilterProg.progressPercentage;
    return progress;
  }

  num get fuelPumpProgress {
    progress_object fuelPumpProg = new progress_object(
        this.mileage - this.lastChangedFuelPump, this.intervalFuelPump);
        num progress = fuelPumpProg.progressPercentage;
    return progress;
  }

  num get suspensionInspectionProgress {
    progress_object suspensionInspectionProg = new progress_object(
        this.mileage - this.lastSuspensionInspection,
        this.intervalSuspensionInspection);
        num progress = suspensionInspectionProg.progressPercentage;
    return progress;
  }

  num get changedTiresProgress {
    progress_object changedTiresProg = new progress_object(
        this.mileage - this.lastChangedTires, this.intervalTires);
        num progress = changedTiresProg.progressPercentage;
    return progress;
  }

//override toString method
  @override
  String toString() {
    if(imageProvider == null)
    {
      return    'null, '
            + '$mileage, '
            + '$year, '
            + '$make, '
            + '$model, '
            + '$trim, '
            + '$nickname, '
            + '$intervalEngineOilAndFilter, '
            + '$intervalTireRotation, '
            + '$intervalBrakeInspection, '
            + '$intervalEngineCoolant, '
            + '$intervalAirFilter, '
            + '$intervalSparkPlugs, '
            + '$intervalTimingBeltChain, '
            + '$intervalWaterPumpInspection, '
            + '$intervalDriveBeltInspection, '
            + '$intervalTransmissionFluid, '
            + '$intervalTransFilter, '
            + '$intervalBrakeFluid, '
            + '$intervalCabinAirFilter, '
            + '$intervalFuelFilter, '
            + '$intervalFuelPump, '
            + '$intervalSuspensionInspection, '
            + '$intervalTires, '
            + '$lastChangedEngineOilAndFilter, '
            + '$lastChangedTireRotation, '
            + '$lastChangedBrakeInspection, '
            + '$lastChangedEngineCoolant, '
            + '$lastChangedAirFilter, '
            + '$lastChangedSparkPlugs, '
            + '$lastChangedTimingBeltChain, '
            + '$lastChangedWaterPumpInspection, '
            + '$lastChangedDriveBeltInspection, '
            + '$lastChangedTransmissionFluid, '
            + '$lastChangedTransmissionFilter, '
            + '$lastChangedBrakeFluid, '
            + '$lastChangedCabinAirFilter, '
            + '$lastChangedFuelFilter, '
            + '$lastChangedFuelPump, '
            + '$lastSuspensionInspection, '
            + '$lastChangedTires';
    }
    else{
      return    '${(imageProvider as FileImage).file.path}, '
            + '$mileage, '
            + '$year, '
            + '$make, '
            + '$model, '
            + '$trim, '
            + '$nickname, '
            + '$intervalEngineOilAndFilter, '
            + '$intervalTireRotation, '
            + '$intervalBrakeInspection, '
            + '$intervalEngineCoolant, '
            + '$intervalAirFilter, '
            + '$intervalSparkPlugs, '
            + '$intervalTimingBeltChain, '
            + '$intervalWaterPumpInspection, '
            + '$intervalDriveBeltInspection, '
            + '$intervalTransmissionFluid, '
            + '$intervalTransFilter, '
            + '$intervalBrakeFluid, '
            + '$intervalCabinAirFilter, '
            + '$intervalFuelFilter, '
            + '$intervalFuelPump, '
            + '$intervalSuspensionInspection, '
            + '$intervalTires, '
            + '$lastChangedEngineOilAndFilter, '
            + '$lastChangedTireRotation, '
            + '$lastChangedBrakeInspection, '
            + '$lastChangedEngineCoolant, '
            + '$lastChangedAirFilter, '
            + '$lastChangedSparkPlugs, '
            + '$lastChangedTimingBeltChain, '
            + '$lastChangedWaterPumpInspection, '
            + '$lastChangedDriveBeltInspection, '
            + '$lastChangedTransmissionFluid, '
            + '$lastChangedTransmissionFilter, '
            + '$lastChangedBrakeFluid, '
            + '$lastChangedCabinAirFilter, '
            + '$lastChangedFuelFilter, '
            + '$lastChangedFuelPump, '
            + '$lastSuspensionInspection, '
            + '$lastChangedTires';
    }
  }
  // void setPicture(String assetName) async {
  //     final recorder = ui.PictureRecorder();
  //     final canvas = Canvas(recorder);
  //     final image = await loadImage(assetName);
  //     canvas.drawImage(image, Offset.zero, Paint());
  //     picture = recorder.endRecording();
  //   }

  // Future<ui.Image> loadImage(String assetName) async {
  //   final data = await rootBundle.load(assetName);
  //   final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
  //   final frame = await codec.getNextFrame();
  //   return frame.image;
  // }

  //generate car object from string
  static Car parseCar(String carString) {
    List<String> carList = carString.split(', ');


    return Car(
      carList[0] != null ? FileImage(File(carList[0])) : null,
      num.parse(carList[1]),
      int.parse(carList[2]),
      carList[3],
      carList[4],
      carList[5],
      carList[6],
      num.parse(carList[7]),
      num.parse(carList[8]),
      num.parse(carList[9]),
      num.parse(carList[10]),
      num.parse(carList[11]),
      num.parse(carList[12]),
      num.parse(carList[13]),
      num.parse(carList[14]),
      num.parse(carList[15]),
      num.parse(carList[16]),
      num.parse(carList[17]),
      num.parse(carList[18]),
      num.parse(carList[19]),
      num.parse(carList[20]),
      num.parse(carList[21]),
      num.parse(carList[22]),
      num.parse(carList[23]),
      num.parse(carList[24]),
      num.parse(carList[25]),
      num.parse(carList[26]),
      num.parse(carList[27]),
      num.parse(carList[28]),
      num.parse(carList[29]),
      num.parse(carList[30]),
      num.parse(carList[31]),
      num.parse(carList[32]),
      num.parse(carList[33]),
      num.parse(carList[34]),
      num.parse(carList[35]),
      num.parse(carList[36]),
      num.parse(carList[37]),
      num.parse(carList[38]),
      num.parse(carList[39]),
      num.parse(carList[40])
    );
  }
}
