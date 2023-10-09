import 'dart:ui' as ui;
import 'dart:ui';

class Car {
  ui.Picture? picture;
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
  

 Car(Picture? picture, 
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
    num lastChangedBrakeFluid = 0, 
    num lastChangedCabinAirFilter = 0, 
    num lastChangedFuelFilter = 0, 
    num lastChangedFuelPump = 0, 
    num lastSuspensionInspection = 0,
    num lastChangedTires = 0])
{
    this.picture = picture;
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
}
//override toString method
  @override
  //to string method
  String toString() {
    return    '$picture, '
            + '$mileage, '
            + '$year, '
            + '$make, '
            + '$model, '
            + '$trim, '
            + '$nickname, '
            + '$lastChangedEngineOilAndFilter, '
            + '$intervalEngineOilAndFilter, '
            + '$lastChangedTireRotation, '
            + '$intervalTireRotation, '
            + '$lastChangedBrakeInspection, '
            + '$intervalBrakeInspection, '
            + '$lastChangedEngineCoolant, '
            + '$intervalEngineCoolant, '
            + '$lastChangedAirFilter, '
            + '$intervalAirFilter, '
            + '$lastChangedSparkPlugs, '
            + '$intervalSparkPlugs, '
            + '$lastChangedTimingBeltChain, '
            + '$intervalTimingBeltChain, '
            + '$lastChangedWaterPumpInspection, '
            + '$intervalWaterPumpInspection, '
            + '$lastChangedDriveBeltInspection, '
            + '$intervalDriveBeltInspection, '
            + '$lastChangedTransmissionFluid, '
            + '$intervalTransmissionFluid, '
            + '$lastChangedBrakeFluid, '
            + '$intervalBrakeFluid, '
            + '$lastChangedCabinAirFilter, '
            + '$intervalCabinAirFilter, '
            + '$lastChangedFuelFilter, '
            + '$intervalFuelFilter, '
            + '$lastChangedFuelPump, '
            + '$intervalFuelPump, '
            + '$lastSuspensionInspection, '
            + '$intervalSuspensionInspection}';
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
}
