class Car {
  int mileage;
  int year;
  String make;
  String model;
  String trim;
  String nickname;
  int lastChangedEngineOilAndFilter = 0;
  int intervalEngineOilAndFilter;
  int lastChangedTireRotation = 0;
  int intervalTireRotation;
  int lastChangedBrakeInspection = 0;
  int intervalBrakeInspection;
  int lastChangedEngineCoolant = 0;
  int intervalEngineCoolant;
  int lastChangedAirFilter = 0;
  int intervalAirFilter;
  int lastChangedSparkPlugs = 0;
  int intervalSparkPlugs;
  int lastChangedTimingBeltChain = 0;
  int intervalTimingBeltChain;
  int lastChangedWaterPumpInspection = 0;
  int intervalWaterPumpInspection;
  int lastChangedDriveBeltInspection = 0;
  int intervalDriveBeltInspection;
  int lastChangedTransmissionFluid = 0;
  int intervalTransmissionFluid;
  int lastChangedBrakeFluid = 0;
  int intervalBrakeFluid;
  int lastChangedCabinAirFilter = 0;
  int intervalCabinAirFilter;
  int lastChangedFuelFilter = 0;
  int intervalFuelFilter;
  int lastChangedFuelPump = 0;
  int intervalFuelPump;
  int lastSuspensionInspection = 0; 
  int intervalSuspensionInspection;

Car({
    required this.mileage,
    required this.year,
    required this.make,
    required this.model,
    required this.trim,
    required this.nickname,
    required this.lastChangedEngineOilAndFilter,
    required this.intervalEngineOilAndFilter,
    required this.lastChangedTireRotation,
    required this.intervalTireRotation,
    required this.lastChangedBrakeInspection,
    required this.intervalBrakeInspection,
    required this.lastChangedEngineCoolant,
    required this.intervalEngineCoolant,
    required this.lastChangedAirFilter,
    required this.intervalAirFilter,
    required this.lastChangedSparkPlugs,
    required this.intervalSparkPlugs,
    required this.lastChangedTimingBeltChain,
    required this.intervalTimingBeltChain,
    required this.lastChangedWaterPumpInspection,
    required this.intervalWaterPumpInspection,
    required this.lastChangedDriveBeltInspection,
    required this.intervalDriveBeltInspection,
    required this.lastChangedTransmissionFluid,
    required this.intervalTransmissionFluid,
    required this.lastChangedBrakeFluid,
    required this.intervalBrakeFluid,
    required this.lastChangedCabinAirFilter,
    required this.intervalCabinAirFilter,
    required this.lastChangedFuelFilter,
    required this.intervalFuelFilter,
    required this.lastChangedFuelPump,
    required this.intervalFuelPump,
    required this.lastSuspensionInspection, 
    required this.intervalSuspensionInspection
});
}
