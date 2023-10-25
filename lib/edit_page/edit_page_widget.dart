import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moto_re_minder/car_object.dart';
import 'package:moto_re_minder/index.dart';
import 'package:path_provider/path_provider.dart';
import '/flutter_flow/flutter_flow_util.dart';
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
    num _savedyear = 0;
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
                  _savedyear = value! as num;}
                  ,)
                ),
              ),
              Text("Please consult your odometer and manual for the following:",
              style: TextStyle(fontSize: 16)
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
            ],
          ),
        ),
      ),
      );
  }
}