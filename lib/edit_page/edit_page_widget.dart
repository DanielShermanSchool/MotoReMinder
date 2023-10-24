import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class EditPageWidget extends StatefulWidget {
  @override
  _EditPageWidgetState createState() => _EditPageWidgetState();
}

class _EditPageWidgetState extends State<EditPageWidget> {
  final _formKey = GlobalKey<FormState>();
  late String _nickname;
  late String _mileage;
  late String _year;
  late String _make;
  late String _model;
  late String _trim;
  late String _intervalEngineOilAndFilter;
  late String _intervalTireRotation;
  late String _intervalBrakeInspection;
  late String _intervalEngineCoolant;
  late String _intervalAirFilter;
  late String _intervalSparkPlugs;
  late String _intervalTimingBeltChain;
  late String _intervalWaterPumpInspection;
  late String _intervalDriveBeltInspection;
  late String _intervalTransmissionFluid;
  late String _intervalTransFilter;
  late String _intervalBrakeFluid;
  late String _intervalCabinAirFilter;
  late String _intervalFuelFilter;
  late String _intervalFuelPump;
  late String _intervalSuspensionInspection;
  late String _intervalTires;

  late String _lastChangedEngineOilAndFilter;
  late String _lastChangedTireRotation;
  late String _lastChangedBrakeInspection;
  late String _lastChangedEngineCoolant;
  late String _lastChangedAirFilter;
  late String _lastChangedSparkPlugs;
  late String _lastChangedTimingBeltChain;
  late String _lastChangedWaterPumpInspection;
  late String _lastChangedDriveBeltInspection;
  late String _lastChangedTransmissionFluid;
  late String _lastChangedTransFilter;
  late String _lastChangedBrakeFluid;
  late String _lastChangedCabinAirFilter;
  late String _lastChangedFuelFilter;
  late String _lastChangedFuelPump;
  late String _lastChangedSuspensionInspection;
  late String _lastChangedTires;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Form'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Nickname', hintText: 'MyCar, TheBeast, etc.'),
                style: TextStyle(fontSize: 18.0),
                onSaved: (value) {
                  _nickname = value!;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Make', hintText: 'Honda, Toyota, etc.'),
                style: TextStyle(fontSize: 18.0),
                onSaved: (value) {
                  _make = value!;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Model', hintText: 'Civic, Corolla, etc.'),
                style: TextStyle(fontSize: 18.0),
                onSaved: (value) {
                  _model = value!;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Year', hintText: '2010, 2015, etc.'),
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18.0),
                onSaved: (value) {
                  _year = value!;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Trim', hintText: 'LX, EX, GSR, Lariat, etc.'),
                style: TextStyle(fontSize: 18.0),
                onSaved: (value) {
                  _trim = value!;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Last Changed Engine Oil and Filter', hintText: 'Leave blank for 0.'),
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18.0),
                onSaved: (value) {
                  _year = value!;
                },
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    // Now you can use the values
                    print('Make: $_make, Model: $_model, Year: $_year, Trim: $_trim');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  // void saveToFile(String fileName, Car car) async {
  //   final directory = await getApplicationDocumentsDirectory();
  //   final path = directory.path;
  //   final file = File('$path/cars/$fileName');
    
  //   // Make sure the directory exists
  //   await file.parent.create(recursive: true);
    
  //   file.writeAsStringSync(car.toString());

  //   print('Saved to ${file.path}');
  // }
}
