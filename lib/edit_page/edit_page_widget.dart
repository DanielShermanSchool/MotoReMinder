import 'dart:io';
import 'package:moto_re_minder/edit_page/edit_page_model.dart';
import 'package:flutter/services.dart';
import 'package:moto_re_minder/flutter_flow/flutter_flow_util.dart';
import 'package:moto_re_minder/index.dart';
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

   late EditPageModel _model;

  @override
  void initState() {
    super.initState();
         _model = createModel(context, () => EditPageModel());

    _model.carName ??= TextEditingController();
    _model.carMake ??= TextEditingController();
    _model.carModel ??= TextEditingController();
    _model.carYear ??= TextEditingController();
    _model.carTrim ??= TextEditingController();
    _model.carMileage??= TextEditingController();

    _model.oilChanged ??= TextEditingController();
    _model.oilInterval ??= TextEditingController();
    _model.transChanged ??= TextEditingController();
    _model.transInterval ??= TextEditingController();
    _model.transFilterChanged ??= TextEditingController();
    _model.transFilterInterval ??= TextEditingController();
    _model.brakesChanged ??= TextEditingController();
    _model.brakesInterval ??= TextEditingController();
    _model.sparksChanged ??= TextEditingController();
    _model.sparksInterval ??= TextEditingController();
    _model.ffilterChanged ??= TextEditingController();
    _model.ffilterInterval ??= TextEditingController();
    _model.afilterChanged ??= TextEditingController();
    _model.afilterInterval ??= TextEditingController();
    _model.tiresChanged ??= TextEditingController();
    _model.tiresInterval ??= TextEditingController();
    
    _model.tireRotationInterval ??= TextEditingController();
    _model.coolantInterval ??= TextEditingController();
    _model.timingBeltInterval ??= TextEditingController();
    _model.waterPumpInterval ??= TextEditingController();
    _model.driveBeltInterval ??= TextEditingController();
    _model.brakeFluidInterval ??= TextEditingController();
    _model.cabinAirFilterInterval ??= TextEditingController();
    _model.fuelPumpInterval ??= TextEditingController();

    _model.tireRotationChanged ??= TextEditingController();
    _model.coolantChanged ??= TextEditingController();
    _model.timingBeltChanged ??= TextEditingController();
    _model.waterPumpChanged ??= TextEditingController();
    _model.driveBeltChanged ??= TextEditingController();
    _model.brakeFluidChanged ??= TextEditingController();
    _model.cabinAirFilterChanged ??= TextEditingController();
    _model.fuelPumpChanged ??= TextEditingController();
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
                Padding(
  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
  child: SizedBox(
    width: MediaQuery.of(context).size.width * 0.5,
    child: TextFormField(
      initialValue: widget.car != null ? widget.car?.nickname : null,
      controller: widget.car != null ? null : _model.carName,
      decoration: InputDecoration(
        labelText: 'Nickname',
        hintText: 'MyCar, TheBeast, etc.'
      ),
      style: TextStyle(fontSize: 18.0),
      onSaved: (value) {
        _savedname = value!;
      },
    ),
  ),
),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null ? widget.car?.make : null,
      controller: widget.car != null ? null : _model.carMake,
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
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.model : null,
      controller: widget.car != null ? null : _model.carModel,
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
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.trim : null,
      controller: widget.car != null ? null : _model.carTrim,
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
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.year.toString() : null,
      controller: widget.car != null ? null : _model.carYear,
                    decoration: InputDecoration(labelText: 'Year', hintText: '2002, 2015, etc.'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                )
                ),
              ),
              Text("Please consult your odometer and manual for the following:",
              style: TextStyle(fontSize: 16)
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.mileage.toString(): null,
      controller: widget.car != null ? null : _model.carMileage,
                    decoration: InputDecoration(labelText: 'Mileage on odometer'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                  )
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedEngineOilAndFilter.toString() : null,
      controller: widget.car != null ? null : _model.oilChanged,
                    decoration: InputDecoration(labelText: 'Oil Changed last'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                  )
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalEngineOilAndFilter.toString() : null,
      controller: widget.car != null ? null : _model.oilInterval,
                    decoration: InputDecoration(labelText: 'Engine oil change interval', hintText: 'Leave empty for default of 5000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedTransmissionFluid.toString() : null,
      controller: widget.car != null ? null : _model.transChanged,
                    decoration: InputDecoration(labelText: 'Transmission fluid changed last'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalTransmissionFluid.toString() : null,
      controller: widget.car != null ? null : _model.transInterval,
                    decoration: InputDecoration(labelText: 'Transmission fluid change interval', hintText: 'Leave empty for default of 30000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedTransmissionFilter.toString() : null,
      controller: widget.car != null ? null : _model.transFilterChanged,
                    decoration: InputDecoration(labelText: 'Transmission filter last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalTransFilter.toString() : null,
      controller: widget.car != null ? null : _model.transFilterInterval,
                    decoration: InputDecoration(labelText: 'Transmission filter change interval', hintText: 'Leave empty for default of 30000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedBrakeFluid.toString() : null,
      controller: widget.car != null ? null : _model.brakeFluidChanged,
                    decoration: InputDecoration(labelText: 'Brake fluid last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalBrakeFluid.toString() : null,
      controller: widget.car != null ? null : _model.brakeFluidInterval,
                    decoration: InputDecoration(labelText: 'Brake fluid change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedBrakeInspection.toString() : null,
      controller: widget.car != null ? null : _model.brakesChanged,
                    decoration: InputDecoration(labelText: 'Brake inspection last happened'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalBrakeInspection.toString() : null,
      controller: widget.car != null ? null : _model.brakesInterval,
                    decoration: InputDecoration(labelText: 'Brake inspection interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedSparkPlugs.toString() : null,
      controller: widget.car != null ? null : _model.sparksChanged,
                    decoration: InputDecoration(labelText: 'Spark Plugs last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalSparkPlugs.toString() : null,
      controller: widget.car != null ? null : _model.sparksInterval,
                    decoration: InputDecoration(labelText: 'Spark plugs change interval', hintText: 'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedFuelFilter.toString() : null,
      controller: widget.car != null ? null : _model.ffilterChanged,
                    decoration: InputDecoration(labelText: 'Fuel filter last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalFuelFilter.toString() : null,
      controller: widget.car != null ? null : _model.ffilterInterval,
                    decoration: InputDecoration(labelText: 'Fuel filter change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedAirFilter.toString() : null,
      controller: widget.car != null ? null : _model.afilterChanged,
                    decoration: InputDecoration(labelText: 'Air filter last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalAirFilter.toString() : null,
      controller: widget.car != null ? null : _model.afilterInterval,
                    decoration: InputDecoration(labelText: 'Air filter change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedCabinAirFilter.toString() : null,
      controller: widget.car != null ? null : _model.cabinAirFilterChanged,
                    decoration: InputDecoration(labelText: 'Cabin air filter last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalCabinAirFilter.toString() : null,
      controller: widget.car != null ? null : _model.cabinAirFilterInterval,
                    decoration: InputDecoration(labelText: 'Cabin air filter change interval', hintText: 'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedTimingBeltChain.toString() : null,
      controller: widget.car != null ? null : _model.timingBeltChanged,
                    decoration: InputDecoration(labelText: 'Timing belt/chain last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalTimingBeltChain.toString() : null,
      controller: widget.car != null ? null : _model.timingBeltInterval,
                    decoration: InputDecoration(labelText: 'Timing belt/chain change interval', hintText: 'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
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
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedWaterPumpInspection.toString() : null,
      controller: widget.car != null ? null : _model.waterPumpChanged,
                    decoration: InputDecoration(labelText: 'Water pump last inspected'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalWaterPumpInspection.toString() : null,
      controller: widget.car != null ? null : _model.waterPumpInterval,
                    decoration: InputDecoration(labelText: 'Water pump inspection interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedFuelPump.toString() : null,
      controller: widget.car != null ? null : _model.fuelPumpChanged,
                    decoration: InputDecoration(labelText: 'Fuel pump last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalFuelPump.toString() : null,
      controller: widget.car != null ? null : _model.fuelPumpInterval,
                    decoration: InputDecoration(labelText: 'Fuel pump change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedTires.toString() : null,
      controller: widget.car != null ? null : _model.tiresChanged,
                    decoration: InputDecoration(labelText: 'Tires last changed'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
               Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalTires.toString() : null,
      controller: widget.car != null ? null : _model.tiresInterval,
                    decoration: InputDecoration(labelText: 'Tire change interval'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Align(
  alignment: Alignment(0.83, -0.78),
  child: ElevatedButton(
    onPressed: () {
      setState(() {
  _savedmileage = num.tryParse(_model.carMileage.text) ?? 0;
  _savedyear = int.tryParse(_model.carYear.text) ?? 0;
  _savedmake = _model.carMake.text;
  _savedmodel = _model.carModel.text;
  _savedtrim = _model.carTrim.text;
  _savedname = _model.carName.text;

  _savedoilinterval = num.tryParse(_model.oilInterval.text) ?? 5000;
  _savedtirerotationinterval = num.tryParse(_model.tireRotationInterval.text) ?? 5000;
  _savedbrakesinterval = num.tryParse(_model.brakesInterval.text) ?? 10000;
  _savedcoolantinterval = num.tryParse(_model.coolantInterval.text) ?? 50000;
  _savedairfilterinterval = num.tryParse(_model.afilterInterval.text) ?? 50000;
  _savedsparksinterval = num.tryParse(_model.sparksInterval.text) ?? 100000;
  _savedtimingbeltinterval = num.tryParse(_model.timingBeltInterval.text) ?? 50000;
  _savedwaterpumpinterval = num.tryParse(_model.waterPumpInterval.text) ?? 50000;
  _saveddrivebeltinterval = num.tryParse(_model.driveBeltInterval.text) ?? 30000;
  _savedtransfluidinterval = num.tryParse(_model.transInterval.text) ?? 30000;
  _savedtransfilterinterval = num.tryParse(_model.transFilterInterval.text) ?? 80085;
  _savedbrakefluidinterval = num.tryParse(_model.brakeFluidInterval.text) ?? 50000;
  _savedcabinairfilterinterval = num.tryParse(_model.cabinAirFilterInterval.text) ?? 100000;
  _savedfuelfilterinterval = num.tryParse(_model.ffilterInterval.text) ?? 50000;
  _savedfuelpumpinterval = num.tryParse(_model.fuelPumpInterval.text) ?? 50000;
  _savedtireinterval = num.tryParse(_model.tiresInterval.text) ?? 30000;

  _savedoilchanged = num.tryParse(_model.oilChanged.text) ?? 0;
  _savedtirerotationchanged = num.tryParse(_model.tireRotationChanged.text) ?? 0;
  _savedbrakeschanged = num.tryParse(_model.brakesChanged.text) ?? 0;
  _savedcoolantchanged = num.tryParse(_model.coolantChanged.text) ?? 0;
  _savedairfilterchanged = num.tryParse(_model.afilterChanged.text) ?? 0;
  _savedsparkschanged = num.tryParse(_model.sparksChanged.text) ?? 0;
  _savedtimingbeltchanged = num.tryParse(_model.timingBeltChanged.text) ?? 0;
  _savedwaterpumpchanged = num.tryParse(_model.waterPumpChanged.text) ?? 0;
  _saveddrivebeltchanged = num.tryParse(_model.driveBeltChanged.text) ?? 0;
  _savedtransfluidchanged = num.tryParse(_model.transChanged.text) ?? 0;
  _savedtransfilterchange = num.tryParse(_model.transFilterChanged.text) ?? 0;
  _savedbrakefluidchanged = num.tryParse(_model.brakeFluidChanged.text) ?? 0;
  _savedcabinairfilterchanged = num.tryParse(_model.cabinAirFilterChanged.text) ?? 0;
  _savedfuelfilterchanged = num.tryParse(_model.ffilterChanged.text) ?? 0;
  _savedfuelpumpchanged = num.tryParse(_model.fuelPumpChanged.text) ?? 0;
  _savedtirechanged = num.tryParse(_model.tiresChanged.text) ?? 0;
});

Car car = Car(
  null,
  _savedmileage,
  _savedyear,
  _savedmake,
  _savedmodel,
  _savedtrim,
  _savedname,
  _savedoilinterval,
  _savedtirerotationinterval,
  _savedbrakesinterval,
  _savedcoolantinterval,
  _savedairfilterinterval,
  _savedsparksinterval,
  _savedtimingbeltinterval,
  _savedwaterpumpinterval,
  _saveddrivebeltinterval,
  _savedtransfluidinterval,
  _savedtransfilterinterval,
  _savedbrakefluidinterval,
  _savedcabinairfilterinterval,
  _savedfuelfilterinterval,
  _savedfuelpumpinterval,
  _savedtireinterval,
  _savedoilchanged,
  _savedtirerotationchanged,
  _savedbrakeschanged,
  _savedcoolantchanged,
  _savedairfilterchanged,
  _savedsparkschanged,
  _savedtimingbeltchanged,
  _savedwaterpumpchanged,
  _saveddrivebeltchanged,
  _savedtransfluidchanged,
  _savedtransfilterchange,
  _savedbrakefluidchanged,
  _savedcabinairfilterchanged,
  _savedfuelfilterchanged,
  _savedfuelpumpchanged,
  _savedtirechanged,
);

saveToFile(car.nickname + ".mrm", car);

      num result = 0;
      result = (_savedairfilterchanged / (_savedmileage + _savedairfilterinterval));
      print(result);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CarPageWidget()),
      ).then((value) {
        setState(() {});
      });
    },
    child: Text(
      'Submit',
      style: TextStyle(fontSize: 15.0),
    ),
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

