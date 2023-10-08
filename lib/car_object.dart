import 'dart:ui' as ui;
import 'dart:ui';

class Car {
  ui.Picture? picture;
  late double mileage;
  late int year;
  late String make;
  late String model;
  late String trim;
  late String nickname;
  double lastChangedEngineOilAndFilter = 0;
  late double intervalEngineOilAndFilter;
  double lastChangedTireRotation = 0;
  late double intervalTireRotation;
  double lastChangedBrakeInspection = 0;
  late double intervalBrakeInspection;
  double lastChangedEngineCoolant = 0;
  late double intervalEngineCoolant;
  double lastChangedAirFilter = 0;
  late double intervalAirFilter;
  double lastChangedSparkPlugs = 0;
  late double intervalSparkPlugs;
  double lastChangedTimingBeltChain = 0;
  late double intervalTimingBeltChain;
  double lastChangedWaterPumpInspection = 0;
  late double intervalWaterPumpInspection;
  double lastChangedDriveBeltInspection = 0;
  late double  intervalDriveBeltInspection;
  double lastChangedTransmissionFluid = 0;
  late double  intervalTransmissionFluid;
  double lastChangedBrakeFluid = 0;
  late double  intervalBrakeFluid;
  double lastChangedCabinAirFilter = 0;
  late double  intervalCabinAirFilter;
  double lastChangedFuelFilter = 0;
  late double intervalFuelFilter;
  double lastChangedFuelPump = 0;
  late double intervalFuelPump;
  double lastSuspensionInspection = 0; 
  late double intervalSuspensionInspection;
  double lastChangedTires = 0;
  late double intervalTires;
  

 Car(Picture? picture, 
     double mileage, 
    int year, 
    String make, 
    String model, 
    String trim, 
    String nickname, 
    double intervalEngineOilAndFilter, 
    double intervalTireRotation, 
    double intervalBrakeInspection, 
    double intervalEngineCoolant, 
    double intervalAirFilter, 
    double intervalSparkPlugs, 
    double intervalTimingBeltChain, 
    double intervalWaterPumpInspection, 
    double intervalDriveBeltInspection, 
    double intervalTransmissionFluid, 
    double intervalBrakeFluid, 
    double intervalCabinAirFilter, 
    double intervalFuelFilter, 
    double intervalFuelPump, 
    double intervalSuspensionInspection,
    double intervalTires,
    [double lastChangedEngineOilAndFilter = 0, 
    double lastChangedTireRotation = 0, 
    double lastChangedBrakeInspection = 0, 
    double lastChangedEngineCoolant = 0, 
    double lastChangedAirFilter = 0, 
    double lastChangedSparkPlugs = 0, 
    double lastChangedTimingBeltChain = 0, 
    double lastChangedWaterPumpInspection = 0, 
    double lastChangedDriveBeltInspection = 0, 
    double lastChangedTransmissionFluid = 0, 
    double lastChangedBrakeFluid = 0, 
    double lastChangedCabinAirFilter = 0, 
    double lastChangedFuelFilter = 0, 
    double lastChangedFuelPump = 0, 
    double lastSuspensionInspection = 0,
    double lastChangedTires = 0])
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
