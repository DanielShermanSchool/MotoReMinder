import 'dart:io';

import 'package:flutter/services.dart';
import 'package:moto_re_minder/car_object.dart';
import 'package:moto_re_minder/index.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'edit_page_model.dart';
export 'edit_page_model.dart';

class EditPageWidget extends StatefulWidget {
  final Car? car; //optional car object if you're editing a car

  EditPageWidget({this.car});

  @override
  _EditPageWidgetState createState() => _EditPageWidgetState();
}

class _EditPageWidgetState extends State<EditPageWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }
    String _savedname = '';
    num _savedmileage = 0;
    String _savedmake = '';
    String _savedmodel = '';
    int _savedyear = 0;
    num _savedoilchanged = 0;
    num _savedoilinterval = 0;
    num _savedtransfluidchanged = 0;
    num _savedtransfluidinterval = 0;
    num _savedtransfilterchange = 0;
    num _savedtransfilterinterval = 0;
    num _savedbrakeschanged = 0;
    num _savedbrakesinterval = 0;
    num _savedsparkschanged = 0;
    num _savedsparksinterval = 0;
    num _savedfuelfilterchanged = 0;
    num _savedfuelfilterinterval = 0;
    num _savedairfilterchanged = 0;
    num _savedairfilterinterval = 0;
    num _savedtirechanged = 0;
    num _savedtireinterval = 0;

    String _savedtrim = '';
    num _savedtirerotationinterval = 0;
    num _savedcoolantinterval = 0;
    num _savedtimingbeltinterval = 0;
    num _savedwaterpumpinterval = 0;
    num _saveddrivebeltinterval = 0;
    num _savedbrakefluidinterval = 0;
    num _savedcabinairfilterinterval = 0;
    num _savedfuelpumpinterval = 0;

    num _savedtirerotationchanged = 0;
    num _savedcoolantchanged = 0;
    num _savedtimingbeltchanged = 0;
    num _savedwaterpumpchanged = 0;
    num _saveddrivebeltchanged = 0;
    num _savedbrakefluidchanged = 0;
    num _savedcabinairfilterchanged = 0;
    num _savedfuelpumpchanged = 0;
    

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Change to your desired color
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Edit Cars',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Color(0xFFF1F4F6),
              size: 24.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.nickname,
                    decoration: InputDecoration(labelText: 'Nickname', hintText: 'MyCar, TheBeast, etc.'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedname = value!;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.make,
                    decoration: InputDecoration(labelText: 'Make', hintText: 'Toyota, Honda, etc.'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _savedmake variable
                  _savedmake = value!;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.model,
                    decoration: InputDecoration(labelText: 'Model', hintText: 'Civic, Corolla, etc.'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedmodel = value!;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.trim,
                    decoration: InputDecoration(labelText: 'Trim', hintText: 'MyCar, TheBeast, etc.'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedname = value!;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.year.toString(),
                    decoration: InputDecoration(labelText: 'Year', hintText: '2002, 2015, etc.'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedyear = value! as int;}
                  ,)
                ),
              ),
              Text("Please consult your odometer and manual for the following:",
              style: TextStyle(fontSize: 16)
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.mileage.toString(),
                    decoration: InputDecoration(labelText: 'Mileage on odometer'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedmileage = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedEngineOilAndFilter.toString(),
                    decoration: InputDecoration(labelText: 'Oil Changed last'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedoilchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalEngineOilAndFilter.toString(),
                    decoration: InputDecoration(labelText: 'Engine oil change interval', hintText: 'Leave empty for default of 5000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedoilinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedTransmissionFluid.toString(),
                    decoration: InputDecoration(labelText: 'Transmission fluid changed last'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtransfluidchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalTransmissionFluid.toString(),
                    decoration: InputDecoration(labelText: 'Transmission fluid change interval', hintText: 'Leave empty for default of 30000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtransfluidinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedTransmissionFilter.toString(),
                    decoration: InputDecoration(labelText: 'Transmission filter last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtransfilterchange = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalTransFilter.toString(),
                    decoration: InputDecoration(labelText: 'Transmission filter change interval', hintText: 'Leave empty for default of 30000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtransfilterinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedBrakeFluid.toString(),
                    decoration: InputDecoration(labelText: 'Brake fluid last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedbrakefluidchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalBrakeFluid.toString(),
                    decoration: InputDecoration(labelText: 'Brake fluid change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedbrakefluidinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedBrakeInspection.toString(),
                    decoration: InputDecoration(labelText: 'Brake inspection last happened'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedbrakeschanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalBrakeInspection.toString(),
                    decoration: InputDecoration(labelText: 'Brake inspection interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedbrakesinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedSparkPlugs.toString(),
                    decoration: InputDecoration(labelText: 'Spark Plugs last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedsparkschanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalSparkPlugs.toString(),
                    decoration: InputDecoration(labelText: 'Spark plugs change interval', hintText: 'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtransfilterinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedFuelFilter.toString(),
                    decoration: InputDecoration(labelText: 'Fuel filter last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedfuelfilterchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalFuelFilter.toString(),
                    decoration: InputDecoration(labelText: 'Fuel filter change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtransfilterinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedAirFilter.toString(),
                    decoration: InputDecoration(labelText: 'Air filter last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedairfilterchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalAirFilter.toString(),
                    decoration: InputDecoration(labelText: 'Air filter change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedairfilterinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedCabinAirFilter.toString(),
                    decoration: InputDecoration(labelText: 'Cabin air filter last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedcabinairfilterchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalCabinAirFilter.toString(),
                    decoration: InputDecoration(labelText: 'Cabin air filter change interval', hintText: 'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtransfilterinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedTimingBeltChain.toString(),
                    decoration: InputDecoration(labelText: 'Timing belt/chain last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtimingbeltchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalCabinAirFilter.toString(),
                    decoration: InputDecoration(labelText: 'Cabin air filter change interval', hintText: 'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtransfilterinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedTimingBeltChain.toString(),
                    decoration: InputDecoration(labelText: 'Timing belt/chain last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtimingbeltchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalTimingBeltChain.toString(),
                    decoration: InputDecoration(labelText: 'Timing belt/chain change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtimingbeltinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedWaterPumpInspection.toString(),
                    decoration: InputDecoration(labelText: 'Water pump last inspected'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedwaterpumpchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalWaterPumpInspection.toString(),
                    decoration: InputDecoration(labelText: 'Water pump inspection interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedwaterpumpinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedFuelPump.toString(),
                    decoration: InputDecoration(labelText: 'Fuel pump last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedfuelpumpchanged = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalFuelPump.toString(),
                    decoration: InputDecoration(labelText: 'Fuel pump change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtransfilterinterval = value! as num;}
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.lastChangedTires.toString(),
                    decoration: InputDecoration(labelText: 'Tires last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtirechanged = value! as num;}
                  ,)
                ),
              ),
               Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car?.intervalTires.toString(),
                    decoration: InputDecoration(labelText: 'Tire change interval', hintText: "Leave empty for default of 30000"), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                onSaved: (value) { //when the submit button is pressed, the text in this field is saved to the _nickname variable
                  _savedtireinterval = value! as num;}
                  ,)
                ),
              ),
              Container( //allows the submit button to change size
              width: double.infinity, //makes the button the width of the screen
              child: ElevatedButton( //the actual submit button
                child: Text('Submit'),
                onPressed: () { //this is the stuff that happens when the button is pressed
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                  }
                },
              ),
            ),
            ],
            
          ),
        ),
        
      ),
      );
  }
 void saveToFile(String fileName, Car car) async {
final directory = await getApplicationDocumentsDirectory();
final path = directory.path;
final file = File('$path/cars/$fileName');
// Make sure the directory exists
await file.parent.create(recursive: true);
file.writeAsStringSync(car.toString());
print('Saved to ${file.path}');
} 
}