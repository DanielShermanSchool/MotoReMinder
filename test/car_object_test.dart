import 'dart:math';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moto_re_minder/car_object.dart';
import 'package:moto_re_minder/progress_object.dart';

final int _MILEAGE = 120000;
final int _INTERVAL_ENGING_OIL_AND_FILTER = 20000;
final int _INTERVAL_TIRE_ROTATION = 20000;
final int _INTERVAL_BRAKE_INSPECTION = 20000;
final int _INTERVAL_ENGINE_COOLANT = 20000;
final int _INTERVAL_AIR_FILTER = 20000;
final int _INTERVAL_SPARK_PLUG = 20000;
final int _INTERVAL_TIMING_BELT = 20000;
final int _INTERVAL_WATER_PUMP = 20000;
final int _INTERVAL_DRIVE_BELT = 20000;
final int _INTERVAL_TRANSMISSION_FLUID = 20000;
final int _INTERVAL_TRANSMISSION_FILTER = 20000;
final int _INTERVAL_BRAKE_FLUID = 20000;
final int _INTERVAL_CABIN_AIR_FILTER = 20000;
final int _INTERVAL_FUEL_FILTER = 20000;
final int _INTERVAL_FUEL_PUMP = 20000;
final int _INTERVAL_SUSPENSION = 20000;
final int _INTERVAL_TIRES = 20000;

final int _LAST_CHANGED_ENGINE_OIL_FILTER = 110000;
final int _LAST_CHANGED_TIRE_ROTATION = 110000;
final int _LAST_CHANGED_BRAKE_INSPECTION = 110000;
final int _LAST_CHANGED_ENGINE_COOLANT = 110000;
final int _LAST_CHANGED_AIR_FILTER = 110000;
final int _LAST_CHANGED_SPARK_PLUGS = 110000;
final int _LAST_CHANGED_TIMING_BELT_CHAIN = 110000;
final int _LAST_CHANGED_WATER_PUMP_INSPECTION = 110000;
final int _LAST_CHANGED_DRIVE_BELT_INSPECTION = 110000;
final int _LAST_CHANGED_TRANSMISSION_FLUID = 110000;
final int _LAST_CHANGED_TRANSMISSION_FILTER = 110000;
final int _LAST_CHANGED_BRAKE_FLUID = 110000;
final int _LAST_CHANGED_CABIN_AIR_FILTER = 110000;
final int _LAST_CHANGED_FUEL_FILTER = 110000;
final int _LAST_CHANGED_FUEL_PUMP = 110000;
final int _LAST_SUSPENSION_INSPECTION = 110000;
final int _LAST_CHANGED_TIRES = 110000;

Car myCar = new Car(
    null,
    _MILEAGE,
    2000,
    'this',
    'is',
    'a',
    'test',
    _INTERVAL_ENGING_OIL_AND_FILTER,
    _INTERVAL_TIRE_ROTATION,
    _INTERVAL_BRAKE_INSPECTION,
    _INTERVAL_ENGINE_COOLANT,
    _INTERVAL_AIR_FILTER,
    _INTERVAL_SPARK_PLUG,
    _INTERVAL_TIMING_BELT,
    _INTERVAL_WATER_PUMP,
    _INTERVAL_DRIVE_BELT,
    _INTERVAL_TRANSMISSION_FLUID,
    _INTERVAL_TRANSMISSION_FILTER,
    _INTERVAL_BRAKE_FLUID,
    _INTERVAL_CABIN_AIR_FILTER,
    _INTERVAL_FUEL_FILTER,
    _INTERVAL_FUEL_PUMP,
    _INTERVAL_SUSPENSION,
    _INTERVAL_TIRES,
    _LAST_CHANGED_ENGINE_OIL_FILTER,
    _LAST_CHANGED_TIRE_ROTATION,
    _LAST_CHANGED_BRAKE_INSPECTION,
    _LAST_CHANGED_ENGINE_COOLANT,
    _LAST_CHANGED_AIR_FILTER,
    _LAST_CHANGED_SPARK_PLUGS,
    _LAST_CHANGED_TIMING_BELT_CHAIN,
    _LAST_CHANGED_WATER_PUMP_INSPECTION,
    _LAST_CHANGED_DRIVE_BELT_INSPECTION,
    _LAST_CHANGED_TRANSMISSION_FLUID,
    _LAST_CHANGED_TRANSMISSION_FILTER,
    _LAST_CHANGED_BRAKE_FLUID,
    _LAST_CHANGED_CABIN_AIR_FILTER,
    _LAST_CHANGED_FUEL_FILTER,
    _LAST_CHANGED_FUEL_PUMP,
    _LAST_SUSPENSION_INSPECTION,
    _LAST_CHANGED_TIRES);

Car myCarMoreMileage = new Car(
    null,
    _MILEAGE + 30000,
    2000,
    'this',
    'is',
    'a',
    'test',
    _INTERVAL_ENGING_OIL_AND_FILTER,
    _INTERVAL_TIRE_ROTATION,
    _INTERVAL_BRAKE_INSPECTION,
    _INTERVAL_ENGINE_COOLANT,
    _INTERVAL_AIR_FILTER,
    _INTERVAL_SPARK_PLUG,
    _INTERVAL_TIMING_BELT,
    _INTERVAL_WATER_PUMP,
    _INTERVAL_DRIVE_BELT,
    _INTERVAL_TRANSMISSION_FLUID,
    _INTERVAL_TRANSMISSION_FILTER,
    _INTERVAL_BRAKE_FLUID,
    _INTERVAL_CABIN_AIR_FILTER,
    _INTERVAL_FUEL_FILTER,
    _INTERVAL_FUEL_PUMP,
    _INTERVAL_SUSPENSION,
    _INTERVAL_TIRES,
    _LAST_CHANGED_ENGINE_OIL_FILTER,
    _LAST_CHANGED_TIRE_ROTATION,
    _LAST_CHANGED_BRAKE_INSPECTION,
    _LAST_CHANGED_ENGINE_COOLANT,
    _LAST_CHANGED_AIR_FILTER,
    _LAST_CHANGED_SPARK_PLUGS,
    _LAST_CHANGED_TIMING_BELT_CHAIN,
    _LAST_CHANGED_WATER_PUMP_INSPECTION,
    _LAST_CHANGED_DRIVE_BELT_INSPECTION,
    _LAST_CHANGED_TRANSMISSION_FLUID,
    _LAST_CHANGED_TRANSMISSION_FILTER,
    _LAST_CHANGED_BRAKE_FLUID,
    _LAST_CHANGED_CABIN_AIR_FILTER,
    _LAST_CHANGED_FUEL_FILTER,
    _LAST_CHANGED_FUEL_PUMP,
    _LAST_SUSPENSION_INSPECTION,
    _LAST_CHANGED_TIRES);

void main() {
  testWidgets('car object ...', (tester) async {
    String myString = myCar.toString();
    Car myCar2 = Car.parseCar(myString);
    String myString2 = myCar2.toString();
    expect(myString, myString2);
  });

  //test progress bars within car object
  testWidgets('car object progress bars engine oil', (tester) async {
    progress_object myProgress = myCar.oilChangeProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars engine oil OVER 100%', (tester) async {
    progress_object myProgress = myCarMoreMileage.oilChangeProgress;
    expect(myProgress.progressPercentage, 1);
  });

  //same test but for tire rotation
  testWidgets('car object progress bars tire rotation', (tester) async {
    progress_object myProgress = myCar.tireRotationProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars tire rotation OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.tireRotationProgress;
    expect(myProgress.progressPercentage, 1);
  });

  //same test but for brake inspection
  testWidgets('car object progress bars brake inspection', (tester) async {
    progress_object myProgress = myCar.brakeInspectionProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars brake inspection OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.brakeInspectionProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars brake fluid', (tester) async {
    progress_object myProgress = myCar.brakeFluidProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars brake fluid OVER 100%', (tester) async {
    progress_object myProgress = myCarMoreMileage.brakeFluidProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars engine coolant', (tester) async {
    progress_object myProgress = myCar.engineCoolantChangeProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars engine coolant OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.engineCoolantChangeProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars air filter', (tester) async {
    progress_object myProgress = myCar.airFilterProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars air filter OVER 100%', (tester) async {
    progress_object myProgress = myCarMoreMileage.airFilterProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars spark plug', (tester) async {
    progress_object myProgress = myCar.sparkPlugProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars spark plug OVER 100%', (tester) async {
    progress_object myProgress = myCarMoreMileage.sparkPlugProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars timing belt chain', (tester) async {
    progress_object myProgress = myCar.timingBeltChainProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars timing belt chain OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.timingBeltChainProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars water pump inspection', (tester) async {
    progress_object myProgress = myCar.waterPumpInspectionProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars water pump inspection OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.waterPumpInspectionProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars drive belt', (tester) async {
    progress_object myProgress = myCar.driveBeltInspectionProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars drive belt OVER 100%', (tester) async {
    progress_object myProgress = myCarMoreMileage.driveBeltInspectionProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars transmission fluid', (tester) async {
    progress_object myProgress = myCar.transmissionFluidProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars transmission fluid OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.transmissionFluidProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars transmission filter', (tester) async {
    progress_object myProgress = myCar.transmissionFilterProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars transmission filter OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.transmissionFilterProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars cabin air filter', (tester) async {
    progress_object myProgress = myCar.cabinAirFilterProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars cabin air filter OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.cabinAirFilterProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars fuel filter', (tester) async {
    progress_object myProgress = myCar.fuelFilterProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars fuel filter OVER 100%', (tester) async {
    progress_object myProgress = myCarMoreMileage.fuelFilterProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars fuel pump', (tester) async {
    progress_object myProgress = myCar.fuelPumpProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars fuel pump OVER 100%', (tester) async {
    progress_object myProgress = myCarMoreMileage.fuelPumpProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars suspension inspection', (tester) async {
    progress_object myProgress = myCar.suspensionInspectionProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars suspension inspection OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.suspensionInspectionProgress;
    expect(myProgress.progressPercentage, 1);
  });

  testWidgets('car object progress bars changed tires', (tester) async {
    progress_object myProgess = myCar.changedTiresProgress;
    expect(myProgess.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars changed tires OVER 100%',
      (tester) async {
    progress_object myProgress = myCarMoreMileage.changedTiresProgress;
    expect(myProgress.progressPercentage, 1);
  });
}
