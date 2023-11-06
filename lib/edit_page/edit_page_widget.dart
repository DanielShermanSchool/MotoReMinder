import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:moto_re_minder/car_object.dart';
import 'package:moto_re_minder/edit_page/edit_page_model.dart';

import 'package:moto_re_minder/index.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

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
    _model = new EditPageModel();

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
    _model.lastSuspensionInspection ??= TextEditingController(); 
    _model.suspensionInspectionInterval ??= TextEditingController(); 
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
    num _savedSuspensionInspectionInterval = 0;

    num _savedtirerotationchanged = 0;
    num _savedcoolantchanged = 0;
    num _savedtimingbeltchanged = 0;
    num _savedwaterpumpchanged = 0;
    num _saveddrivebeltchanged = 0;
    num _savedbrakefluidchanged = 0;
    num _savedcabinairfilterchanged = 0;
    num _savedfuelpumpchanged = 0;
    num _savedSuspensionInspection = 0;
    

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.grey, // Change to your desired color
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            //This changes how the back button works, instead of popping the old screen out, it replaces it
            //With a newer version of the car page. Going to test this with the submit button after pushing
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (BuildContext context) {
      return CarPageWidget();
    },
  ),
);
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
  onPressed: () async {
    //Sets the nickname to look for
    String nickname = widget.car!.nickname;
    //Directory to look for in the delete 
    final directory = await getApplicationDocumentsDirectory();
    final path = directory.path;
    final carsDirectory = Directory('$path/cars');

    // Create the directory if it doesn't exist.
    //For whatever reason this is needed despite already being made long ago.
    if (!(await carsDirectory.exists())) {
      carsDirectory.createSync(recursive: true);
    }
    //Finds the file using the directory path and the name given
    File fileToDelete = File('${carsDirectory.path}/$nickname.mrm');

    // Debug: Print the file path.
    print('File path: ${fileToDelete.path}');

    if (await fileToDelete.exists()) {
      try {
        await fileToDelete.delete();
        print('File deleted successfully.');
        
        // Navigate back to the CarPageWidget when the file is deleted.
       Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return CarPageWidget();
        },
      ),
    );

      } catch (e) {
        print('Error deleting file: $e');
      }
    } else {
      // Debug: List files in the directory.
      final files = carsDirectory.listSync();
      files.forEach((file) {
        print('File found: ${file.path}');
      });

      print('File not found.');
    }
  },
)
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
        hintText: 'MyCar, TheBeast, or will give random number'
      ),
      style: TextStyle(fontSize: 18.0),
    ),
  ),
),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null ? widget.car?.make : null,
      controller: widget.car != null ? null : _model.carMake, //Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
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
      controller: widget.car != null ? null : _model.carTrim,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Trim', hintText: 'Laredo, Lariat, LTZ, etc.'), //the text that appears when the field is empty
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
      controller: widget.car != null ? null : _model.carYear,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Year', hintText: '2002, 2015, etc.'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                )
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.mileage.toString(): null,
      controller: widget.car != null ? null : _model.carMileage,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Mileage on odometer'), //Just labels for those who would would not have a hint text
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                  )
                ),
              ),
              Text("Please consult your owner's manual for the following:",
              style: TextStyle(fontSize: 16)
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalEngineOilAndFilter.toString() : null,
      controller: widget.car != null ? null : _model.oilInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Engine oil change interval', hintText: 'Leave empty for default of 5000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalTransmissionFluid.toString() : null,
      controller: widget.car != null ? null : _model.transInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Transmission fluid change interval', hintText: 'Leave empty for default of 30000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalTransFilter.toString() : null,
      controller: widget.car != null ? null : _model.transFilterInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Transmission filter change interval', hintText: 'Leave empty for default of 30000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalBrakeFluid.toString() : null,
      controller: widget.car != null ? null : _model.brakeFluidInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Brake fluid change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalBrakeInspection.toString() : null,
      controller: widget.car != null ? null : _model.brakesInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Brake inspection interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalSparkPlugs.toString() : null,
      controller: widget.car != null ? null : _model.sparksInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Spark plugs change interval', hintText: 'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalFuelFilter.toString() : null,
      controller: widget.car != null ? null : _model.ffilterInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Fuel filter change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalAirFilter.toString() : null,
      controller: widget.car != null ? null : _model.afilterInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Air filter change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalCabinAirFilter.toString() : null,
      controller: widget.car != null ? null : _model.cabinAirFilterInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Cabin air filter change interval', hintText: 'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalTimingBeltChain.toString() : null,
      controller: widget.car != null ? null : _model.timingBeltInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Timing belt/chain change interval', hintText: 'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                    )
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalDriveBeltInspection.toString() : null,
      controller: widget.car != null ? null : _model.driveBeltInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Drive Belt inspection interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalWaterPumpInspection.toString() : null,
      controller: widget.car != null ? null : _model.waterPumpInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Water pump inspection interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalFuelPump.toString() : null,
      controller: widget.car != null ? null : _model.fuelPumpInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Fuel pump change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalEngineCoolant.toString() : null,
      controller: widget.car != null ? null : _model.coolantInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Engine coolant change interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalSuspensionInspection.toString() : null,
      controller: widget.car != null ? null : _model.suspensionInspectionInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Suspension inspection interval', hintText: 'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalTireRotation.toString() : null,
      controller: widget.car != null ? null : _model.tireRotationInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Tire rotation happening interval', hintText: 'Leave empty for default of 5000 miles'), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox( //This one here is the wierd one. I dunno why, but this one never sets correctly.
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.intervalTires.toString() : null,
      controller: widget.car != null ? null : _model.tiresInterval,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Tire change interval', hintText: "Leave empty for default of 30000 miles"), //the text that appears when the field is empty
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Text("Refer to your written records for mileage. Or leave blank",
              style: TextStyle(fontSize: 16)
              ),
              Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedEngineOilAndFilter.toString() : null,
      controller: widget.car != null ? null : _model.oilChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Oil Changed last'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],//Keeping numbers only numbers
                  )
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedTransmissionFluid.toString() : null,
      controller: widget.car != null ? null : _model.transChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Transmission fluid changed last'),//Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedTransmissionFilter.toString() : null,
      controller: widget.car != null ? null : _model.transFilterChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Transmission filter last changed'),//Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedBrakeFluid.toString() : null,
      controller: widget.car != null ? null : _model.brakeFluidChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Brake fluid last changed'),//Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedBrakeInspection.toString() : null,
      controller: widget.car != null ? null : _model.brakesChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Brake inspection last happened'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedSparkPlugs.toString() : null,
      controller: widget.car != null ? null : _model.sparksChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Spark Plugs last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedFuelFilter.toString() : null,
      controller: widget.car != null ? null : _model.ffilterChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Fuel filter last changed'),//Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedAirFilter.toString() : null,
      controller: widget.car != null ? null : _model.afilterChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Air filter last changed'),//Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedCabinAirFilter.toString() : null,
      controller: widget.car != null ? null : _model.cabinAirFilterChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Cabin air filter last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedTimingBeltChain.toString() : null,
      controller: widget.car != null ? null : _model.timingBeltChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Timing belt/chain last changed'),//Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedDriveBeltInspection.toString() : null,
      controller: widget.car != null ? null : _model.driveBeltChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Drive belt last inspected'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],//Keeping numbers only numbers
                  )
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedWaterPumpInspection.toString() : null,
      controller: widget.car != null ? null : _model.waterPumpChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Water pump last inspected'),//Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedFuelPump.toString() : null,
      controller: widget.car != null ? null : _model.fuelPumpChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Fuel pump last changed'),//Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedEngineCoolant.toString() : null,
      controller: widget.car != null ? null : _model.coolantChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Engine coolant Changed last'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],//Keeping numbers only numbers
                  )
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastSuspensionInspection.toString() : null,
      controller: widget.car != null ? null : _model.lastSuspensionInspection,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Suspension inspection happened last'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],//Keeping numbers only numbers
                  )
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedTireRotation.toString() : null,
      controller: widget.car != null ? null : _model.tireRotationChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Tire rotation happened last'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],//Keeping numbers only numbers
                  )
                ),
              ),
Padding(padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(initialValue: widget.car != null ? widget.car?.lastChangedTires.toString() : null,
      controller: widget.car != null ? null : _model.tiresChanged,//Load bearing code for each of the inputs; this allows either the initial input or the controller to be used first. Both are needed
                    decoration: InputDecoration(labelText: 'Tires last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                style: TextStyle(fontSize: 18.0), //the size of the text
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                  ,)
                ),
              ),
              Align(
  alignment: Alignment(0.83, -0.78),
  child: ElevatedButton(
    onPressed: () async {
      setState(() {
        //Set up the state for the save function
  _savedmileage = num.tryParse(_model.carMileage!.text) ?? 0;
  _savedyear = int.tryParse(_model.carYear!.text) ?? 0;
  _savedmake = _model.carMake!.text;
  _savedmodel = _model.carModel!.text;
  _savedtrim = _model.carTrim!.text;
  //This adjusts to allow a blank and still make a name so it changes the icon so you do not overwrite ones
  String carName = _model.carName!.text;
  _savedname = carName.isNotEmpty ? carName : generateRandomNumber();

  _savedoilinterval = num.tryParse(_model.oilInterval!.text) ?? 5000;
  _savedtirerotationinterval = num.tryParse(_model.tireRotationInterval!.text) ?? 5000;
  _savedbrakesinterval = num.tryParse(_model.brakesInterval!.text) ?? 10000;
  _savedcoolantinterval = num.tryParse(_model.coolantInterval!.text) ?? 50000;
  _savedairfilterinterval = num.tryParse(_model.afilterInterval!.text) ?? 50000;
  _savedsparksinterval = num.tryParse(_model.sparksInterval!.text) ?? 100000;
  _savedtimingbeltinterval = num.tryParse(_model.timingBeltInterval!.text) ?? 50000;
  _savedwaterpumpinterval = num.tryParse(_model.waterPumpInterval!.text) ?? 50000;
  _saveddrivebeltinterval = num.tryParse(_model.driveBeltInterval!.text) ?? 30000;
  _savedtransfluidinterval = num.tryParse(_model.transInterval!.text) ?? 30000;
  _savedtransfilterinterval = num.tryParse(_model.transFilterInterval!.text) ?? 30000;
  _savedbrakefluidinterval = num.tryParse(_model.brakeFluidInterval!.text) ?? 50000;
  _savedcabinairfilterinterval = num.tryParse(_model.cabinAirFilterInterval!.text) ?? 100000;
  _savedfuelfilterinterval = num.tryParse(_model.ffilterInterval!.text) ?? 50000;
  _savedfuelpumpinterval = num.tryParse(_model.fuelPumpInterval!.text) ?? 50000;
  _savedtireinterval = num.tryParse(_model.tiresInterval!.text) ?? 30000;
  _savedSuspensionInspectionInterval = num.tryParse(_model.suspensionInspectionInterval!.text) ?? 50000;

  _savedoilchanged = num.tryParse(_model.oilChanged!.text) ?? 0;
  _savedtirerotationchanged = num.tryParse(_model.tireRotationChanged!.text) ?? 0;
  _savedbrakeschanged = num.tryParse(_model.brakesChanged!.text) ?? 0;
  _savedcoolantchanged = num.tryParse(_model.coolantChanged!.text) ?? 0;
  _savedairfilterchanged = num.tryParse(_model.afilterChanged!.text) ?? 0;
  _savedsparkschanged = num.tryParse(_model.sparksChanged!.text) ?? 0;
  _savedtimingbeltchanged = num.tryParse(_model.timingBeltChanged!.text) ?? 0;
  _savedwaterpumpchanged = num.tryParse(_model.waterPumpChanged!.text) ?? 0;
  _saveddrivebeltchanged = num.tryParse(_model.driveBeltChanged!.text) ?? 0;
  _savedtransfluidchanged = num.tryParse(_model.transChanged!.text) ?? 0;
  _savedtransfilterchange = num.tryParse(_model.transFilterChanged!.text) ?? 0;
  _savedbrakefluidchanged = num.tryParse(_model.brakeFluidChanged!.text) ?? 0;
  _savedcabinairfilterchanged = num.tryParse(_model.cabinAirFilterChanged!.text) ?? 0;
  _savedfuelfilterchanged = num.tryParse(_model.ffilterChanged!.text) ?? 0;
  _savedfuelpumpchanged = num.tryParse(_model.fuelPumpChanged!.text) ?? 0;
  _savedtirechanged = num.tryParse(_model.tiresChanged!.text) ?? 0;
  _savedSuspensionInspection = num.tryParse(_model.lastSuspensionInspection!.text) ?? 0;
});
//Declaration of the car object, which allows this to actuall work.
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
  _savedSuspensionInspectionInterval,
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
  _savedSuspensionInspection,
  _savedtirechanged
);

saveToFile(car.nickname + ".mrm", car);

      //This in theory should automatically switch to car with the new car; but something seems off.
      await Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context){
        return CarPageWidget();
        }
      )
      );
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
  //Basic save function.
  void saveToFile(String fileName, Car car) async {
  final directory = await getApplicationDocumentsDirectory();
  final path = directory.path;
  final file = File('$path/cars/$fileName');
  
  // Make sure the directory exists
  await file.parent.create(recursive: true);
  
  file.writeAsStringSync(car.toString());

  print('Saved to ${file.path}');

}
//This helps the car generation for those who don't want to make a nickname
 String generateRandomNumber() {
  final random = Random();
  final randomNumber = random.nextInt(91000000); // Adjust the range as needed
  return 'My car $randomNumber';
}

}


