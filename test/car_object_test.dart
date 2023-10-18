import 'package:flutter_test/flutter_test.dart';
import 'package:moto_re_minder1/car_object.dart';
import 'package:moto_re_minder1/progress_object.dart';


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




void main() {
  testWidgets('car object ...', (tester) async {
    //create car
    Car myCar = new Car(null, 
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
    //test car
    String myString = myCar.toString();
    Car myCar2 = Car.parseCar(myString);
    String myString2 = myCar2.toString();
    expect(myString, myString2);
  });

  //test progress bars within car object
  testWidgets('car object progress bars engine oil', (tester) async {
    //create car
    Car myCar = new Car(null, 
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
    
    //test car
    progress_object myProgress = myCar.oilChangeProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars engine oil OVER 100%', (tester) async {
    //create car
    Car myCar = new Car(null, 
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
    
    //test car
    progress_object myProgress = myCar.oilChangeProgress;
    expect(myProgress.progressPercentage, 1);
  });

  //same test but for tire rotation
  testWidgets('car object progress bars tire rotation', (tester) async {
    //create car
    Car myCar = new Car(null, 
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
    
    //test car
    progress_object myProgress = myCar.tireRotationProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars tire rotation OVER 100%', (tester) async {
    //create car
    Car myCar = new Car(null, 
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
    
    //test car
    progress_object myProgress = myCar.tireRotationProgress;
    expect(myProgress.progressPercentage, 1);
  });

  //same test but for brake inspection
    testWidgets('car object progress bars brake inspection', (tester) async {
    //create car
    Car myCar = new Car(null, 
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
    
    //test car
    progress_object myProgress = myCar.brakeInspectionProgress;
    expect(myProgress.progressPercentage, 0.5);
  });

  testWidgets('car object progress bars brake inspection OVER 100%', (tester) async {
    //create car
    Car myCar = new Car(null, 
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
    
    //test car
    progress_object myProgress = myCar.brakeInspectionProgress;
    expect(myProgress.progressPercentage, 1);
  });

  
}