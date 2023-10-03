import 'dart:ui' as ui;
import 'dart:ui';

class Car {
  ui.Picture? picture;
  late int mileage;
  late int year;
  late String make;
  late String model;
  late String trim;
  late String nickname;
  int lastChangedEngineOilAndFilter = 0;
  late int intervalEngineOilAndFilter;
  int lastChangedTireRotation = 0;
  late int intervalTireRotation;
  int lastChangedBrakeInspection = 0;
  late int intervalBrakeInspection;
  int lastChangedEngineCoolant = 0;
  late int intervalEngineCoolant;
  int lastChangedAirFilter = 0;
  late int intervalAirFilter;
  int lastChangedSparkPlugs = 0;
  late int intervalSparkPlugs;
  int lastChangedTimingBeltChain = 0;
  late int intervalTimingBeltChain;
  int lastChangedWaterPumpInspection = 0;
  late int intervalWaterPumpInspection;
  int lastChangedDriveBeltInspection = 0;
  late int intervalDriveBeltInspection;
  int lastChangedTransmissionFluid = 0;
  late int intervalTransmissionFluid;
  int lastChangedBrakeFluid = 0;
  late int intervalBrakeFluid;
  int lastChangedCabinAirFilter = 0;
  late int intervalCabinAirFilter;
  int lastChangedFuelFilter = 0;
  late int intervalFuelFilter;
  int lastChangedFuelPump = 0;
  late int intervalFuelPump;
  int lastSuspensionInspection = 0; 
  late int intervalSuspensionInspection;
  

 Car(Picture? picture, 
    int mileage, 
    int year, 
    String make, 
    String model, 
    String trim, 
    String nickname, 
    int intervalEngineOilAndFilter, 
    int intervalTireRotation, 
    int intervalBrakeInspection, 
    int intervalEngineCoolant, 
    int intervalAirFilter, 
    int intervalSparkPlugs, 
    int intervalTimingBeltChain, 
    int intervalWaterPumpInspection, 
    int intervalDriveBeltInspection, 
    int intervalTransmissionFluid, 
    int intervalBrakeFluid, 
    int intervalCabinAirFilter, 
    int intervalFuelFilter, 
    int intervalFuelPump, 
    int intervalSuspensionInspection,
    [int lastChangedEngineOilAndFilter = 0, 
    int lastChangedTireRotation = 0, 
    int lastChangedBrakeInspection = 0, 
    int lastChangedEngineCoolant = 0, 
    int lastChangedAirFilter = 0, 
    int lastChangedSparkPlugs = 0, 
    int lastChangedTimingBeltChain = 0, 
    int lastChangedWaterPumpInspection = 0, 
    int lastChangedDriveBeltInspection = 0, 
    int lastChangedTransmissionFluid = 0, 
    int lastChangedBrakeFluid = 0, 
    int lastChangedCabinAirFilter = 0, 
    int lastChangedFuelFilter = 0, 
    int lastChangedFuelPump = 0, 
    int lastSuspensionInspection = 0])
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
