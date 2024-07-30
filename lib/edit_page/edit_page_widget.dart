import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:moto_re_minder/car_object.dart';
import 'package:path_provider/path_provider.dart';
import 'package:xml/xml.dart' as xml;
import 'dart:convert';

import 'package:xml/xml.dart';

class EditPageWidget extends StatefulWidget {
  final ValueChanged<bool> onThemeChanged; // Callback to change theme

  EditPageWidget({required this.onThemeChanged, required Car car}); 

  @override
  _EditPageWidgetState createState() => _EditPageWidgetState();
}

class _EditPageWidgetState extends State<EditPageWidget> {
  final _formKey = GlobalKey<FormState>(); // Form key
  Map<String, TextEditingController> _controllers = {}; // Map to store text controllers
  bool _isLoading = true; // Loading flag
  Car _car = Car(); // Car object

  @override
  void initState() { // Load XML attributes
    super.initState(); 
    _loadAttributes(); 
  }

  Future<void> _loadAttributes() async { // Load car attributes from XML
    try {
      String xmlString = await rootBundle.loadString('assets/car_attributes.xml');
      var document = XmlDocument.parse(xmlString);
      var carElement = document.findAllElements('car').first;

      carElement.children.where((node) => node is XmlElement).forEach((element) {
        String attributeName = (element as XmlElement).name.toString();
        String attributeValue = element.text;
        _controllers[attributeName] = TextEditingController(text: attributeValue);
        _car.setAttribute(attributeName, attributeValue);
      });

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading XML: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Car Attributes'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView.builder(
                itemCount: _controllers.length,
                itemBuilder: (context, index) {
                  var attribute = _controllers.keys.elementAt(index);
                  return TextFormField(
                    controller: _controllers[attribute],
                    decoration: InputDecoration(
                      labelText: attribute,
                    ),
                  );
                },
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _submit,
        child: Icon(Icons.check),
      ),
    );
  }

  void _submit() async { // Save car attributes to JSON file
    if (_formKey.currentState!.validate()) { // Validate form
      _controllers.forEach((attribute, controller) { // Update car attributes
        _car.setAttribute(attribute, controller.text); // Set car attribute
      });
      String jsonCar = jsonEncode(_car); // Convert car object to JSON string
      print('Car JSON: $jsonCar'); // Print JSON string
      
        // Get the path to the application's documents directory
      final directory = await getApplicationDocumentsDirectory(); 

      // Create a new file in the documents directory
      final file = File('${directory.path}/car_${_car.getAttribute('nickname')}.json');

      // Write the JSON string to the file
      await file.writeAsString(jsonCar);
    }
  }
}