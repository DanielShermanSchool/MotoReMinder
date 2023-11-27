import 'package:moto_re_minder/car_object.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:moto_re_minder/settings_page/settings_page_widget.dart';
export 'home_page_model.dart';

class ChecklistPage extends StatelessWidget {
  final Car car;
  final ValueChanged<bool> onThemeChanged;

  const ChecklistPage({required this.car, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('${car.nickname} Checklist!'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert), // Vertical dots icon
            onPressed: () {
              // Navigate to the Settings Page
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SettingsPageWidget(onThemeChanged: onThemeChanged),
              ));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('Engine Oil and Filter Change', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30, // Adjust this value to change the height of the progress bar
                    child: LinearProgressIndicator(value: car.oilChangeProgress.toDouble(),
                                                    //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.oilChangeProgress)),
                                    
                  )),
                  Center(
                    child: Text('${math.max(0, (car.intervalEngineOilAndFilter)-(car.mileage - car.lastChangedEngineOilAndFilter))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Tire Rotation', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.tireRotationProgress.toDouble(),                                                    //this is what makes it dynamically color changing
                                                   // 
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.tireRotationProgress)),
                                                    )),
                  
                  Center(
                    child: Text('${math.max(0, (car.intervalTireRotation)-(car.mileage - car.lastChangedTireRotation))} Miles Left',
                    style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text('Brake Inspection', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.brakeInspectionProgress.toDouble(),
                                                                      //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.brakeInspectionProgress)),
                                                    )),
                  Center(
                    child: Text('${math.max(0, (car.intervalBrakeInspection)-(car.mileage - car.lastChangedBrakeInspection))} Miles Left',
                    style:  TextStyle(fontSize: 20),),
                  ),
                ],
              ),
              Text('Brake Fluid', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.brakeFluidProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.brakeFluidProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalBrakeFluid)-(car.mileage - car.lastChangedBrakeFluid))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Engine Coolant', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.engineCoolantChangeProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.engineCoolantChangeProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalEngineCoolant)-(car.mileage - car.lastChangedEngineCoolant))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Air Filter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.airFilterProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.airFilterProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalAirFilter)-(car.mileage - car.lastChangedAirFilter))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Spark Plug', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.sparkPlugProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.sparkPlugProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalSparkPlugs)-(car.mileage - car.lastChangedSparkPlugs))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Timing Belt/Chain', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.timingBeltChainProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.timingBeltChainProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalTimingBeltChain)-(car.mileage - car.lastChangedTimingBeltChain))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Water Pump', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.waterPumpInspectionProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.waterPumpInspectionProgress)),
                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalWaterPumpInspection)-(car.mileage - car.lastChangedWaterPumpInspection))} Miles Left', 
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Drive Belt', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.driveBeltInspectionProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.driveBeltInspectionProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalDriveBeltInspection)-(car.mileage - car.lastChangedDriveBeltInspection))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Transmission Fluid', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.transmissionFluidProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.transmissionFluidProgress)),
                                                
                  )),
                  Center(
                    child: Text('${math.max(0, (car.intervalTransmissionFluid)-(car.mileage - car.lastChangedTransmissionFluid))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Transmission Filter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.transmissionFilterProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.transmissionFilterProgress)),
                                                  
                  )),
                  Center(
                    child: Text('${math.max(0, (car.intervalTransFilter)-(car.mileage - car.lastChangedTransmissionFilter))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Cabin Air Filter', style: TextStyle(fontSize: 24, fontWeight:  FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.cabinAirFilterProgress.toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.cabinAirFilterProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalCabinAirFilter)-(car.mileage - car.lastChangedCabinAirFilter))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Fuel Filter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.fuelFilterProgress.toDouble(),
                                                    //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.fuelFilterProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalFuelFilter)-(car.mileage - car.lastChangedFuelFilter))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Fuel Pump', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.fuelPumpProgress.toDouble(),
                                                   //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.fuelPumpProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalFuelPump)-(car.mileage - car.lastChangedFuelPump))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Suspension Inspection', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.suspensionInspectionProgress.toDouble(),
                                                    //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.suspensionInspectionProgress)),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalSuspensionInspection)-(car.mileage - car.lastSuspensionInspection))} Miles Left', 
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Changed Tires', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.changedTiresProgress.toDouble(),
                                                    //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.changedTiresProgress)),
                    )
                  ),
                  Center(
                    child: Text('${math.max(0, (car.intervalTires)-(car.mileage - car.lastChangedTires))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

//this is used to define when the colors change
  Color getProgressColor(num remaining) {
  if (remaining < 0.25 ) {
    return Colors.red;
  } else if (remaining < 0.51) {
    return Colors.amber;
  } else {
    return Color.fromARGB(255, 0, 180, 0);
  }
}

}