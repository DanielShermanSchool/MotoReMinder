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
        title: Text('${car.getAttribute('getAttribute')('nickname')} Checklist!'),
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
                    child: LinearProgressIndicator(value: car.getAttribute('oilChangeProgress').toDouble(),
                                                    //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('oilChangeProgress'))),
                                    
                  )),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalEngineOilAndFilter'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedEngineOilAndFilter')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Tire Rotation', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('tireRotationProgress').toDouble(),                                                    //this is what makes it dynamically color changing
                                                   // 
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('tireRotationProgress'))),
                                                    )),
                  
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalTireRotation'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedTireRotation')))} Miles Left',
                    style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text('Brake Inspection', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('brakeInspectionProgress').toDouble(),
                                                                      //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('brakeInspectionProgress'))),
                                                    )),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalBrakeInspection'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedBrakeInspection')))} Miles Left',
                    style:  TextStyle(fontSize: 20),),
                  ),
                ],
              ),
              Text('Brake Fluid', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('brakeFluidProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('brakeFluidProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalBrakeFluid'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedBrakeFluid')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Engine Coolant', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('engineCoolantChangeProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('engineCoolantChangeProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalEngineCoolant'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedEngineCoolant')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Air Filter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('airFilterProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('airFilterProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalAirFilter'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedAirFilter')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Spark Plug', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('sparkPlugProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('sparkPlugProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalSparkPlugs'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedSparkPlugs')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Timing Belt/Chain', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('timingBeltChainProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('timingBeltChainProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalTimingBeltChain'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedTimingBeltChain')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Water Pump', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('waterPumpInspectionProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('waterPumpInspectionProgress'))),
                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalWaterPumpInspection'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedWaterPumpInspection')))} Miles Left', 
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Drive Belt', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('driveBeltInspectionProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('driveBeltInspectionProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalDriveBeltInspection'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedDriveBeltInspection')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Transmission Fluid', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('transmissionFluidProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('transmissionFluidProgress'))),
                                                
                  )),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalTransmissionFluid'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedTransmissionFluid')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Transmission Filter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('transmissionFilterProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('transmissionFilterProgress'))),
                                                  
                  )),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalTransFilter'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedTransmissionFilter')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Cabin Air Filter', style: TextStyle(fontSize: 24, fontWeight:  FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('cabinAirFilterProgress').toDouble(),
                                                                        //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('cabinAirFilterProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalCabinAirFilter'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedCabinAirFilter')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Fuel Filter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('fuelFilterProgress').toDouble(),
                                                    //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('fuelFilterProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalFuelFilter'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedFuelFilter')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Fuel Pump', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('fuelPumpProgress').toDouble(),
                                                   //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('fuelPumpProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalFuelPump'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedFuelPump')))} Miles Left',
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Suspension Inspection', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('suspensionInspectionProgress').toDouble(),
                                                    //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('suspensionInspectionProgress'))),
                                                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalSuspensionInspection'))-(car.getAttribute('mileage') - car.getAttribute('lastSuspensionInspection')))} Miles Left', 
                    style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Text('Changed Tires', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: LinearProgressIndicator(value: car.getAttribute('changedTiresProgress').toDouble(),
                                                    //this is what makes it dynamically color changing
                                                    valueColor: AlwaysStoppedAnimation<Color>(getProgressColor(car.getAttribute('changedTiresProgress'))),
                    )
                  ),
                  Center(
                    child: Text('${math.max<int>(0, (car.getAttribute('intervalTires'))-(car.getAttribute('mileage') - car.getAttribute('lastChangedTires')))} Miles Left',
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