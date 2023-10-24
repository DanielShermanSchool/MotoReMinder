import 'package:moto_re_minder/car_object.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  final Car car;
  const HomePageWidget({required this.car});

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
                    child: Text('${(car.oilChangeProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.tireRotationProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.brakeInspectionProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.brakeFluidProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.engineCoolantChangeProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.airFilterProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.sparkPlugProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.timingBeltChainProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.waterPumpInspectionProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.driveBeltInspectionProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.transmissionFluidProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.transmissionFilterProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.cabinAirFilterProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.fuelFilterProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.fuelPumpProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.suspensionInspectionProgress * 100).toStringAsFixed(1)}%'),
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
                    child: Text('${(car.changedTiresProgress * 100).toStringAsFixed(1)}%'),
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