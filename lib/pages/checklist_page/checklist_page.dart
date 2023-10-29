import 'package:moto_re_minder/car_object.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
export 'home_page_model.dart';

class ChecklistPage extends StatelessWidget {
  final Car car;

  const ChecklistPage({required this.car});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('${car.nickname} Checklist!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('Oil Change Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30, // Adjust this value to change the height of the progress bar
                    child: LinearProgressIndicator(value: car.oilChangeProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalEngineOilAndFilter)-(car.mileage - car.lastChangedEngineOilAndFilter))} Miles Left'),
                  ),
                ],
              ),
              Text('Tire rotation Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.tireRotationProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalTireRotation)-(car.mileage - car.lastChangedTireRotation))} Miles Left'),
                  ),
                ],
              ),
              Text('Brake inspection Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.brakeInspectionProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalBrakeInspection)-(car.mileage - car.lastChangedBrakeInspection))} Miles Left'),
                  ),
                ],
              ),
              Text('Brake fluid Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.brakeFluidProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalBrakeFluid)-(car.mileage - car.lastChangedBrakeFluid))} Miles Left'),
                  ),
                ],
              ),
              Text('Engine coolant Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.engineCoolantChangeProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalEngineCoolant)-(car.mileage - car.lastChangedEngineCoolant))} Miles Left'),
                  ),
                ],
              ),
              Text('Air Filter Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.airFilterProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalAirFilter)-(car.mileage - car.lastChangedAirFilter))} Miles Left'),
                  ),
                ],
              ),
              Text('Spark Plug Life', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.sparkPlugProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalSparkPlugs)-(car.mileage - car.lastChangedSparkPlugs))} Miles Left'),
                  ),
                ],
              ),
              Text('Timing belt/chain Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.timingBeltChainProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalTimingBeltChain)-(car.mileage - car.lastChangedTimingBeltChain))} Miles Left'),
                  ),
                ],
              ),
              Text('Water Pump Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.waterPumpInspectionProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalWaterPumpInspection)-(car.mileage - car.lastChangedWaterPumpInspection))} Miles Left' ),
                  ),
                ],
              ),
              Text('Drive Belt Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.driveBeltInspectionProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalDriveBeltInspection)-(car.mileage - car.lastChangedDriveBeltInspection))} Miles Left'),
                  ),
                ],
              ),
              Text('Transmission Fluid Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.transmissionFluidProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalTransmissionFluid)-(car.mileage - car.lastChangedTransmissionFluid))} Miles Left'),
                  ),
                ],
              ),
              Text('Transmission filter Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.transmissionFilterProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalTransFilter)-(car.mileage - car.lastChangedTransmissionFilter))} Miles Left'),
                  ),
                ],
              ),
              Text('Cabin air filter Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.cabinAirFilterProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalCabinAirFilter)-(car.mileage - car.lastChangedCabinAirFilter))} Miles Left'),
                  ),
                ],
              ),
              Text('Fuel Filter Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.fuelFilterProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalFuelFilter)-(car.mileage - car.lastChangedFuelFilter))} Miles Left'),
                  ),
                ],
              ),
              Text('Fuel Pump Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.fuelPumpProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalFuelPump)-(car.mileage - car.lastChangedFuelPump))} Miles Left'),
                  ),
                ],
              ),
              Text('Suspension inspection Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.suspensionInspectionProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalSuspensionInspection)-(car.mileage - car.lastSuspensionInspection))} Miles Left'),
                  ),
                ],
              ),
              Text('Changed Tires Progress', style: TextStyle(fontSize: 24)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.changedTiresProgress.toDouble()),
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalTires)-(car.mileage - car.lastChangedTires))} Miles Left'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}