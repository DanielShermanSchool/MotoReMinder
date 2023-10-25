import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:moto_re_minder/car_object.dart';

class EditPageWidget extends StatefulWidget {

  final Car? car; //optional car object if you're editing a car

  EditPageWidget({this.car});

  @override
  _EditPageWidgetState createState() => _EditPageWidgetState();
}

class _EditPageWidgetState extends State<EditPageWidget> {
  final _formKey = GlobalKey<FormState>();

  //car object parameters to be saved to file`
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
  Widget build(BuildContext context) { //the actual visuals of the page
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Form'), //title at the top
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Padding( //each padding is the next visual element, wrapped in padding for ease of reading
            //each padding has a child, which is the actual visual element
            //this child is the text form field (enterable text), and it's for the car's nickname.
            //when the submit button is pressed, the text in this field is saved to the _nickname variable
              padding: const EdgeInsets.all(10.0), //size of the padding
              child: TextFormField( //the actual text form field
                initialValue: widget.car?.nickname, //if editing, autofill params
                decoration: InputDecoration(labelText: 'Nickname', hintText: 'MyCar, TheBeast, etc.'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
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
                //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
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
            Container( //allows the submit button to change size
              width: double.infinity, //makes the button the width of the screen
              child: ElevatedButton( //the actual submit button
                child: Text('Submit'),
                onPressed: () { //this is the stuff that happens when the button is pressed
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
