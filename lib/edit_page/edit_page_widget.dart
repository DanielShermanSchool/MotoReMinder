import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:moto_re_minder/car_object.dart';
import 'package:moto_re_minder/edit_page/edit_page_model.dart';

import 'package:moto_re_minder/index.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

class EditPageWidget extends StatefulWidget {
  final Car? car; //optional car object if you're editing a car
  final ValueChanged<bool> onThemeChanged;

  EditPageWidget({this.car, required this.onThemeChanged});

  @override
  _EditPageWidgetState createState() => _EditPageWidgetState();
}

class _EditPageWidgetState extends State<EditPageWidget> {
  late EditPageModel _model;
  File? _pickedImageFile;
  ImageProvider? _pickedImageProvider;

  ImageProvider<Object>? get imagePath => null;

  @override
  void initState() {
    super.initState();
    _model = new EditPageModel();

    _model.carName ??= TextEditingController();
    _model.carMake ??= TextEditingController();
    _model.carModel ??= TextEditingController();
    _model.carYear ??= TextEditingController();
    _model.carTrim ??= TextEditingController();
    _model.carMileage ??= TextEditingController();

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

  Future<String?> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _pickedImageFile = File(pickedImage.path);
        _pickedImageProvider = FileImage(_pickedImageFile!);
      });

      // Return the path of the selected image
      return pickedImage.path;
    } else {
      print('No image selected.');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {

    
    _savedname = widget.car?.nickname ?? '';
    _savedmileage = widget.car?.mileage ?? 0;
    _savedmake = widget.car?.make ?? '';
    _savedmodel = widget.car?.model ?? '';
    _savedyear = widget.car?.year ?? 0;
    _savedoilchanged = widget.car?.lastChangedEngineOilAndFilter ?? 0;
    _savedoilinterval = widget.car?.intervalEngineOilAndFilter ?? 0;
    _savedtransfluidchanged = widget.car?.lastChangedTransmissionFluid ?? 0;
    _savedtransfluidinterval = widget.car?.intervalTransmissionFluid ?? 0;
    _savedtransfilterchange = widget.car?.lastChangedTransmissionFilter ?? 0;
    _savedtransfilterinterval = widget.car?.intervalTransFilter ?? 0;
    _savedbrakeschanged = widget.car?.lastChangedBrakeFluid ?? 0;
    _savedbrakesinterval = widget.car?.intervalBrakeFluid ?? 0;
    _savedsparkschanged = widget.car?.lastChangedSparkPlugs ?? 0;
    _savedsparksinterval = widget.car?.intervalSparkPlugs ?? 0;
    _savedfuelfilterchanged = widget.car?.lastChangedFuelFilter ?? 0;
    _savedfuelfilterinterval = widget.car?.intervalFuelFilter ?? 0;
    _savedairfilterchanged = widget.car?.lastChangedAirFilter ?? 0;
    _savedairfilterinterval = widget.car?.intervalAirFilter ?? 0;
    _savedtirechanged = widget.car?.lastChangedTires ?? 0;
    _savedtireinterval = widget.car?.intervalTires ?? 0;

    _savedtrim = widget.car?.trim ?? '';
    _savedtirerotationinterval = widget.car?.intervalTireRotation ?? 0;
    _savedcoolantinterval = widget.car?.intervalEngineCoolant ?? 0;
    _savedtimingbeltinterval = widget.car?.intervalTimingBeltChain ?? 0;
    _savedwaterpumpinterval = widget.car?.intervalWaterPumpInspection ?? 0;
    _saveddrivebeltinterval = widget.car?.intervalDriveBeltInspection ?? 0;
    _savedbrakefluidinterval = widget.car?.intervalBrakeFluid ?? 0;
    _savedcabinairfilterinterval = widget.car?.intervalCabinAirFilter ?? 0;
    _savedfuelpumpinterval = widget.car?.intervalFuelPump ?? 0;
    _savedSuspensionInspectionInterval = widget.car?.intervalSuspensionInspection ?? 0;

    _savedtirerotationchanged = widget.car?.lastChangedTireRotation ?? 0;
    _savedcoolantchanged = widget.car?.lastChangedEngineCoolant ?? 0;
    _savedtimingbeltchanged = widget.car?.lastChangedTimingBeltChain ?? 0;
    _savedwaterpumpchanged = widget.car?.lastChangedWaterPumpInspection ?? 0;
    _saveddrivebeltchanged = widget.car?.lastChangedDriveBeltInspection ?? 0;
    _savedbrakefluidchanged = widget.car?.lastChangedBrakeFluid ?? 0;
    _savedcabinairfilterchanged = widget.car?.lastChangedCabinAirFilter ?? 0;
    _savedfuelpumpchanged = widget.car?.lastChangedFuelPump ?? 0;
    _savedSuspensionInspection = widget.car?.lastSuspensionInspection ?? 0;


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
                  return CarPageWidget(onThemeChanged: widget.onThemeChanged);
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
                        return CarPageWidget(
                            onThemeChanged: widget.onThemeChanged);
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
                    initialValue:
                        widget.car != null ? widget.car?.nickname : null,
                    decoration: InputDecoration(
                        labelText: 'Nickname',
                        hintText:
                            'MyCar, TheBeast, or will give random number'),
                    style: TextStyle(fontSize: 18.0),
                    onChanged: (value) {
                      setState(() {
                        _savedname = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue:
                          widget.car != null ? widget.car?.make : null,
                      decoration: InputDecoration(
                          labelText: 'Make', hintText: 'Toyota, Honda, etc.'),
                      style: TextStyle(fontSize: 18.0),
                      onChanged: (value) {
                        setState(() {
                          _savedmake = value;
                        });
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5, //model
                    child: TextFormField(
                      initialValue:
                          widget.car != null ? widget.car?.model : null,
                      decoration: InputDecoration(
                          labelText: 'Model',
                          hintText:
                              'Civic, Corolla, etc.'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedmodel = value;
                        });
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue:
                          widget.car != null ? widget.car?.trim : null,
                      decoration: InputDecoration(
                          labelText: 'Trim',
                          hintText:
                              'Laredo, Lariat, LTZ, etc.'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedmake = value;
                        });
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.year.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Year', hintText: '2002, 2015, etc.'),
                      style: TextStyle(fontSize: 18.0),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                      onChanged: (value) {
                        setState(() {
                          _savedyear = int.tryParse(value) ?? 1900;
                        });
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.mileage.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Mileage on odometer'), //Just labels for those who would would not have a hint text
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedmileage = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Text("Please consult your owner's manual for the following:",
                  style: TextStyle(fontSize: 16)),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalEngineOilAndFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Engine oil change interval',
                          hintText:
                              'Leave empty for default of 5000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedoilinterval = num.tryParse(value) ?? 5000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalTransmissionFluid.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Transmission fluid change interval',
                          hintText:
                              'Leave empty for default of 30000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtransfluidinterval = num.tryParse(value) ?? 30000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalTransFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Transmission filter change interval',
                          hintText:
                              'Leave empty for default of 30000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtransfilterinterval = num.tryParse(value) ?? 30000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalBrakeFluid.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Brake fluid change interval',
                          hintText:
                              'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedbrakefluidinterval = num.tryParse(value) ?? 50000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalBrakeInspection.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Brake inspection interval',
                          hintText:
                              'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedbrakesinterval = num.tryParse(value) ?? 50000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalSparkPlugs.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Spark plugs change interval',
                          hintText:
                              'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedsparksinterval = num.tryParse(value) ?? 100000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalFuelFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Fuel filter change interval',
                          hintText:
                              'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedfuelfilterinterval = num.tryParse(value) ?? 50000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalAirFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Air filter change interval',
                          hintText:
                              'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedairfilterinterval = num.tryParse(value) ?? 50000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalCabinAirFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Cabin air filter change interval',
                          hintText:
                              'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedcabinairfilterinterval = num.tryParse(value) ?? 100000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalTimingBeltChain.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Timing belt/chain change interval',
                          hintText:
                              'Leave empty for default of 100000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtimingbeltinterval = num.tryParse(value) ?? 100000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalDriveBeltInspection.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Drive Belt inspection interval',
                          hintText:
                              'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _saveddrivebeltinterval = num.tryParse(value) ?? 50000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalWaterPumpInspection.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Water pump inspection interval',
                          hintText:
                              'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedwaterpumpinterval = num.tryParse(value) ?? 50000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalFuelPump.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Fuel pump change interval',
                          hintText:
                              'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedfuelpumpinterval = num.tryParse(value) ?? 50000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalEngineCoolant.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Engine coolant change interval',
                          hintText:
                              'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedcoolantinterval = num.tryParse(value) ?? 50000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalSuspensionInspection.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Suspension inspection interval',
                          hintText:
                              'Leave empty for default of 50000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedSuspensionInspectionInterval = num.tryParse(value) ?? 50000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalTireRotation.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Tire rotation happening interval',
                          hintText:
                              'Leave empty for default of 5000 miles'), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtirerotationinterval = num.tryParse(value) ?? 5000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    //This one here is the wierd one. I dunno why, but this one never sets correctly.
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.intervalTires.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText: 'Tire change interval',
                          hintText:
                              "Leave empty for default of 30000 miles"), //the text that appears when the field is empty
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtireinterval = num.tryParse(value) ?? 30000;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Text("Refer to your written records for mileage. Or leave blank",
                  style: TextStyle(fontSize: 16)),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedEngineOilAndFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Oil Changed last'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedoilchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ], //Keeping numbers only numbers
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedTransmissionFluid.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Transmission fluid changed last'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtransfluidchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedTransmissionFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Transmission filter last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtransfilterchange = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedBrakeFluid.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Brake fluid last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedbrakefluidchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedBrakeInspection.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Brake inspection last happened'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedbrakeschanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedSparkPlugs.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Spark Plugs last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedsparkschanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedFuelFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Fuel filter last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedfuelfilterchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedAirFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Air filter last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedairfilterchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedCabinAirFilter.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Cabin air filter last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedcabinairfilterchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedTimingBeltChain.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Timing belt/chain last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtimingbeltchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedDriveBeltInspection
                              .toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Drive belt last inspected'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _saveddrivebeltchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ], //Keeping numbers only numbers
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedWaterPumpInspection
                              .toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Water pump last inspected'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedwaterpumpchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedFuelPump.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Fuel pump last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedfuelpumpchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedEngineCoolant.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Engine coolant Changed last'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedcoolantchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ], //Keeping numbers only numbers
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastSuspensionInspection.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Suspension inspection happened last'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedSuspensionInspection = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ], //Keeping numbers only numbers
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedTireRotation.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Tire rotation happened last'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtirerotationchanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ], //Keeping numbers only numbers
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      initialValue: widget.car != null
                          ? widget.car?.lastChangedTires.toString()
                          : null,
                      decoration: InputDecoration(
                          labelText:
                              'Tires last changed'), //Hint can be changed to "leave empty for zero" But that felt like a no-brainer
                      style: TextStyle(fontSize: 18.0), //the size of the text
                      onChanged: (value) {
                        setState(() {
                          _savedtirechanged = num.tryParse(value) ?? 0;
                        });
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    )),
              ),
              Align(
                alignment: Alignment(0.83, -0.78),
                child: ElevatedButton(
                  onPressed: () async {
                    //Declaration of the car object, which allows this to actuall work.
                    Car myCar = Car(
                        _pickedImageProvider,
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
                        _savedtirechanged);

                    saveToFile(myCar.nickname + ".mrm", myCar);

                    //This in theory should automatically switch to car with the new car; but something seems off.
                    await Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return CarPageWidget(
                          onThemeChanged: widget.onThemeChanged);
                    }));
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Show options for image selection (gallery or camera)
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.photo_library),
                    title: Text('Pick from Gallery'),
                    onTap: () {
                      _pickImage(ImageSource.gallery);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.camera_alt),
                    title: Text('Take a Photo'),
                    onTap: () {
                      _pickImage(ImageSource.camera);
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        },
        tooltip: 'Pick Image',
        label: Text('Add Picture'),
        icon: Icon(Icons.add_a_photo),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
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
