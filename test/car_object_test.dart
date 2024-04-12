
// import 'package:flutter_test/flutter_test.dart';
// import 'package:moto_re_minder/car_object.dart';

// final int _MILEAGE = 120000;
// final int _INTERVAL_ENGING_OIL_AND_FILTER = 20000;
// final int _INTERVAL_TIRE_ROTATION = 20000;
// final int _INTERVAL_BRAKE_INSPECTION = 20000;
// final int _INTERVAL_ENGINE_COOLANT = 20000;
// final int _INTERVAL_AIR_FILTER = 20000;
// final int _INTERVAL_SPARK_PLUG = 20000;
// final int _INTERVAL_TIMING_BELT = 20000;
// final int _INTERVAL_WATER_PUMP = 20000;
// final int _INTERVAL_DRIVE_BELT = 20000;
// final int _INTERVAL_TRANSMISSION_FLUID = 20000;
// final int _INTERVAL_TRANSMISSION_FILTER = 20000;
// final int _INTERVAL_BRAKE_FLUID = 20000;
// final int _INTERVAL_CABIN_AIR_FILTER = 20000;
// final int _INTERVAL_FUEL_FILTER = 20000;
// final int _INTERVAL_FUEL_PUMP = 20000;
// final int _INTERVAL_SUSPENSION = 20000;
// final int _INTERVAL_TIRES = 20000;

// final int _LAST_CHANGED_ENGINE_OIL_FILTER = 110000;
// final int _LAST_CHANGED_TIRE_ROTATION = 110000;
// final int _LAST_CHANGED_BRAKE_INSPECTION = 110000;
// final int _LAST_CHANGED_ENGINE_COOLANT = 110000;
// final int _LAST_CHANGED_AIR_FILTER = 110000;
// final int _LAST_CHANGED_SPARK_PLUGS = 110000;
// final int _LAST_CHANGED_TIMING_BELT_CHAIN = 110000;
// final int _LAST_CHANGED_WATER_PUMP_INSPECTION = 110000;
// final int _LAST_CHANGED_DRIVE_BELT_INSPECTION = 110000;
// final int _LAST_CHANGED_TRANSMISSION_FLUID = 110000;
// final int _LAST_CHANGED_TRANSMISSION_FILTER = 110000;
// final int _LAST_CHANGED_BRAKE_FLUID = 110000;
// final int _LAST_CHANGED_CABIN_AIR_FILTER = 110000;
// final int _LAST_CHANGED_FUEL_FILTER = 110000;
// final int _LAST_CHANGED_FUEL_PUMP = 110000;
// final int _LAST_SUSPENSION_INSPECTION = 110000;
// final int _LAST_CHANGED_TIRES = 110000;

// Car myCar = new Car(
//     null,
//     _MILEAGE,
//     2000,
//     'this',
//     'is',
//     'a',
//     'test',
//     _INTERVAL_ENGING_OIL_AND_FILTER,
//     _INTERVAL_TIRE_ROTATION,
//     _INTERVAL_BRAKE_INSPECTION,
//     _INTERVAL_ENGINE_COOLANT,
//     _INTERVAL_AIR_FILTER,
//     _INTERVAL_SPARK_PLUG,
//     _INTERVAL_TIMING_BELT,
//     _INTERVAL_WATER_PUMP,
//     _INTERVAL_DRIVE_BELT,
//     _INTERVAL_TRANSMISSION_FLUID,
//     _INTERVAL_TRANSMISSION_FILTER,
//     _INTERVAL_BRAKE_FLUID,
//     _INTERVAL_CABIN_AIR_FILTER,
//     _INTERVAL_FUEL_FILTER,
//     _INTERVAL_FUEL_PUMP,
//     _INTERVAL_SUSPENSION,
//     _INTERVAL_TIRES,
//     _LAST_CHANGED_ENGINE_OIL_FILTER,
//     _LAST_CHANGED_TIRE_ROTATION,
//     _LAST_CHANGED_BRAKE_INSPECTION,
//     _LAST_CHANGED_ENGINE_COOLANT,
//     _LAST_CHANGED_AIR_FILTER,
//     _LAST_CHANGED_SPARK_PLUGS,
//     _LAST_CHANGED_TIMING_BELT_CHAIN,
//     _LAST_CHANGED_WATER_PUMP_INSPECTION,
//     _LAST_CHANGED_DRIVE_BELT_INSPECTION,
//     _LAST_CHANGED_TRANSMISSION_FLUID,
//     _LAST_CHANGED_TRANSMISSION_FILTER,
//     _LAST_CHANGED_BRAKE_FLUID,
//     _LAST_CHANGED_CABIN_AIR_FILTER,
//     _LAST_CHANGED_FUEL_FILTER,
//     _LAST_CHANGED_FUEL_PUMP,
//     _LAST_SUSPENSION_INSPECTION,
//     _LAST_CHANGED_TIRES);

// Car myCarToParse = new Car(
//     null,
//     1,
//     2,
//     'this',
//     'is',
//     'a',
//     'test',
//     3,
//     4,
//     5,
//     6,
//     7,
//     8,
//     9,
//     10,
//     11,
//     12,
//     13,
//     14,
//     15,
//     16,
//     17,
//     18,
//     19,
//     20,
//     21,
//     22,
//     23,
//     24,
//     25,
//     26,
//     27,
//     28,
//     29,
//     30,
//     31,
//     32,
//     33,
//     34,
//     35,
//     36);

// Car myCarMoreMileage = new Car(
//     null,
//     _MILEAGE + 30000,
//     2000,
//     'this',
//     'is',
//     'a',
//     'test',
//     _INTERVAL_ENGING_OIL_AND_FILTER,
//     _INTERVAL_TIRE_ROTATION,
//     _INTERVAL_BRAKE_INSPECTION,
//     _INTERVAL_ENGINE_COOLANT,
//     _INTERVAL_AIR_FILTER,
//     _INTERVAL_SPARK_PLUG,
//     _INTERVAL_TIMING_BELT,
//     _INTERVAL_WATER_PUMP,
//     _INTERVAL_DRIVE_BELT,
//     _INTERVAL_TRANSMISSION_FLUID,
//     _INTERVAL_TRANSMISSION_FILTER,
//     _INTERVAL_BRAKE_FLUID,
//     _INTERVAL_CABIN_AIR_FILTER,
//     _INTERVAL_FUEL_FILTER,
//     _INTERVAL_FUEL_PUMP,
//     _INTERVAL_SUSPENSION,
//     _INTERVAL_TIRES,
//     _LAST_CHANGED_ENGINE_OIL_FILTER,
//     _LAST_CHANGED_TIRE_ROTATION,
//     _LAST_CHANGED_BRAKE_INSPECTION,
//     _LAST_CHANGED_ENGINE_COOLANT,
//     _LAST_CHANGED_AIR_FILTER,
//     _LAST_CHANGED_SPARK_PLUGS,
//     _LAST_CHANGED_TIMING_BELT_CHAIN,
//     _LAST_CHANGED_WATER_PUMP_INSPECTION,
//     _LAST_CHANGED_DRIVE_BELT_INSPECTION,
//     _LAST_CHANGED_TRANSMISSION_FLUID,
//     _LAST_CHANGED_TRANSMISSION_FILTER,
//     _LAST_CHANGED_BRAKE_FLUID,
//     _LAST_CHANGED_CABIN_AIR_FILTER,
//     _LAST_CHANGED_FUEL_FILTER,
//     _LAST_CHANGED_FUEL_PUMP,
//     _LAST_SUSPENSION_INSPECTION,
//     _LAST_CHANGED_TIRES);

// void main() {
//   testWidgets('car object ...', (tester) async {
//     String myString = myCar.toString();
//     Car myCar2 = Car.parseCar(myString);
//     String myString2 = myCar2.toString();
//     expect(myString, myString2);
//   });

//   testWidgets('parseCar method accuracy', (tester) async {
//     String testCar = myCarToParse.toString();
//     Car parsedCar = Car.parseCar(testCar);
//     expect(parsedCar.mileage, 1);
//     expect(parsedCar.year, 2);
//     expect(parsedCar.make, 'this');
//     expect(parsedCar.model, 'is');
//     expect(parsedCar.trim, 'a');
//     expect(parsedCar.nickname, 'test');
//     expect(parsedCar.intervalEngineOilAndFilter, 3);
//     expect(parsedCar.intervalTireRotation, 4);
//     expect(parsedCar.intervalBrakeInspection, 5);
//     expect(parsedCar.intervalEngineCoolant, 6);
//     expect(parsedCar.intervalAirFilter, 7);
//     expect(parsedCar.intervalSparkPlugs, 8);
//     expect(parsedCar.intervalTimingBeltChain, 9);
//     expect(parsedCar.intervalWaterPumpInspection, 10);
//     expect(parsedCar.intervalDriveBeltInspection, 11);
//     expect(parsedCar.intervalTransmissionFluid, 12);
//     expect(parsedCar.intervalTransFilter, 13);
//     expect(parsedCar.intervalBrakeFluid, 14);
//     expect(parsedCar.intervalCabinAirFilter, 15);
//     expect(parsedCar.intervalFuelFilter, 16);
//     expect(parsedCar.intervalFuelPump, 17);
//     expect(parsedCar.intervalSuspensionInspection, 18);
//     expect(parsedCar.intervalTires, 19);
//     expect(parsedCar.lastChangedEngineOilAndFilter, 20);
//     expect(parsedCar.lastChangedTireRotation, 21);
//     expect(parsedCar.lastChangedBrakeInspection, 22);
//     expect(parsedCar.lastChangedEngineCoolant, 23);
//     expect(parsedCar.lastChangedAirFilter, 24);
//     expect(parsedCar.lastChangedSparkPlugs, 25);
//     expect(parsedCar.lastChangedTimingBeltChain, 26);
//     expect(parsedCar.lastChangedWaterPumpInspection, 27);
//     expect(parsedCar.lastChangedDriveBeltInspection, 28);
//     expect(parsedCar.lastChangedTransmissionFluid, 29);
//     expect(parsedCar.lastChangedTransmissionFilter, 30);
//     expect(parsedCar.lastChangedBrakeFluid, 31);
//     expect(parsedCar.lastChangedCabinAirFilter, 32);
//     expect(parsedCar.lastChangedFuelFilter, 33);
//     expect(parsedCar.lastChangedFuelPump, 34);
//     expect(parsedCar.lastSuspensionInspection, 35);
//     expect(parsedCar.lastChangedTires, 36);
//   });

//   //test progress bars within car object
//   testWidgets('car object progress bars engine oil', (tester) async {
//     num numProgress = myCar.oilChangeProgress;
//     double doubleProgress = myCar.oilChangeProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars engine oil OVER 100%', (tester) async {
//     num numProgress = myCarMoreMileage.oilChangeProgress;
//     double doubleProgress = myCarMoreMileage.oilChangeProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   //same test but for tire rotation
//   testWidgets('car object progress bars tire rotation', (tester) async {
//     num numProgress = myCar.tireRotationProgress;
//     double doubleProgress = myCar.tireRotationProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars tire rotation OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.tireRotationProgress;
//     double doubleProgress = myCarMoreMileage.tireRotationProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   //same test but for brake inspection
//   testWidgets('car object progress bars brake inspection', (tester) async {
//     num numProgress = myCar.brakeInspectionProgress;
//     double doubleProgress = myCar.brakeInspectionProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars brake inspection OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.brakeInspectionProgress;
//     double doubleProgress = myCarMoreMileage.brakeInspectionProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars brake fluid', (tester) async {
//     num numProgress = myCar.brakeFluidProgress;
//     double doubleProgress = myCar.brakeFluidProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars brake fluid OVER 100%', (tester) async {
//     num numProgress = myCarMoreMileage.brakeFluidProgress;
//     double doubleProgress = myCarMoreMileage.brakeFluidProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars engine coolant', (tester) async {
//     num numProgress = myCar.engineCoolantChangeProgress;
//     double doubleProgress = myCar.engineCoolantChangeProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars engine coolant OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.engineCoolantChangeProgress;
//     double doubleProgress =
//         myCarMoreMileage.engineCoolantChangeProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars air filter', (tester) async {
//     num numProgress = myCar.airFilterProgress;
//     double doubleProgress = myCar.airFilterProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars air filter OVER 100%', (tester) async {
//     num numProgress = myCarMoreMileage.airFilterProgress;
//     double doubleProgress = myCarMoreMileage.airFilterProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars spark plug', (tester) async {
//     num numProgress = myCar.sparkPlugProgress;
//     double doubleProgress = myCar.sparkPlugProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars spark plug OVER 100%', (tester) async {
//     num numProgress = myCarMoreMileage.sparkPlugProgress;
//     num doubleProgress = myCarMoreMileage.sparkPlugProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars timing belt chain', (tester) async {
//     num numProgress = myCar.timingBeltChainProgress;
//     double doubleProgress = myCar.timingBeltChainProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars timing belt chain OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.timingBeltChainProgress;
//     double doubleProgress = myCarMoreMileage.timingBeltChainProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars water pump inspection', (tester) async {
//     num numProgress = myCar.waterPumpInspectionProgress;
//     double doubleProgress = myCar.waterPumpInspectionProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars water pump inspection OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.waterPumpInspectionProgress;
//     double doubleProgress =
//         myCarMoreMileage.waterPumpInspectionProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars drive belt', (tester) async {
//     num numProgress = myCar.driveBeltInspectionProgress;
//     double doubleProgress = myCar.driveBeltInspectionProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars drive belt OVER 100%', (tester) async {
//     num numProgress = myCarMoreMileage.driveBeltInspectionProgress;
//     double doubleProgress =
//         myCarMoreMileage.driveBeltInspectionProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars transmission fluid', (tester) async {
//     num numProgress = myCar.transmissionFluidProgress;
//     double doubleProgress = myCar.transmissionFluidProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars transmission fluid OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.transmissionFluidProgress;
//     double doubleProgress =
//         myCarMoreMileage.transmissionFluidProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars transmission filter', (tester) async {
//     num numProgress = myCar.transmissionFilterProgress;
//     double doubleProgress = myCar.transmissionFilterProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars transmission filter OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.transmissionFilterProgress;
//     double doubleProgress =
//         myCarMoreMileage.transmissionFilterProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars cabin air filter', (tester) async {
//     num numProgress = myCar.cabinAirFilterProgress;
//     double doubleProgress = myCar.cabinAirFilterProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars cabin air filter OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.cabinAirFilterProgress;
//     double doubleProgress = myCarMoreMileage.cabinAirFilterProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars fuel filter', (tester) async {
//     num numProgress = myCar.fuelFilterProgress;
//     double doubleProgress = myCar.fuelFilterProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars fuel filter OVER 100%', (tester) async {
//     num numProgress = myCarMoreMileage.fuelFilterProgress;
//     double doubleProgress = myCarMoreMileage.fuelFilterProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars fuel pump', (tester) async {
//     num numProgress = myCar.fuelPumpProgress;
//     double doubleProgress = myCar.fuelPumpProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars fuel pump OVER 100%', (tester) async {
//     num numProgress = myCarMoreMileage.fuelPumpProgress;
//     double doubleProgress = myCarMoreMileage.fuelPumpProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars suspension inspection', (tester) async {
//     num numProgress = myCar.suspensionInspectionProgress;
//     double doubleProgress = myCar.suspensionInspectionProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars suspension inspection OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.suspensionInspectionProgress;
//     double doubleProgress =
//         myCarMoreMileage.suspensionInspectionProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

//   testWidgets('car object progress bars changed tires', (tester) async {
//     num numProgress = myCar.changedTiresProgress;
//     double doubleProgress = myCar.changedTiresProgress.toDouble();
//     expect(numProgress, 0.5);
//     expect(doubleProgress, 0.5);
//   });

//   testWidgets('car object progress bars changed tires OVER 100%',
//       (tester) async {
//     num numProgress = myCarMoreMileage.changedTiresProgress;
//     double doubleProgress = myCarMoreMileage.changedTiresProgress.toDouble();
//     expect(numProgress, 0);
//     expect(doubleProgress, 0.0);
//   });

// }
