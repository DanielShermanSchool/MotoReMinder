import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:xml/xml.dart' as xml;
import 'dart:convert';

import 'package:xml/xml.dart';

class Car {
  Map<String, dynamic> attributes = {};

  Car();

  Car.fromJson(Map<String, dynamic> json) {
    attributes = json;
  }

  Map<String, dynamic> toJson() {
    return attributes;
  }

  setAttribute(String attribute, dynamic value) {
    attributes[attribute] = value;
  }

  dynamic getAttribute(String attribute) {
    return attributes[attribute];
  }
}

class EditPageWidget extends StatefulWidget {
  @override
  _EditPageWidgetState createState() => _EditPageWidgetState();
}

class _EditPageWidgetState extends State<EditPageWidget> {
  final _formKey = GlobalKey<FormState>();
  Map<String, TextEditingController> _controllers = {};
  Car _car = Car();

  @override
  void initState() {
    super.initState();
    _loadXml();
  }

  void _loadXml() async {
    String xmlString = await rootBundle.loadString('assets/car_attributes.xml');
    var document = XmlDocument.parse(xmlString);
    document.findAllElements('attribute').forEach((element) {
      _controllers[element.text] = TextEditingController();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Car Attributes'),
      ),
      body: Form(
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

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _controllers.forEach((attribute, controller) {
        _car.setAttribute(attribute, controller.text);
      });
      String jsonCar = jsonEncode(_car);
      print('Car JSON: $jsonCar');
      // Do something with the JSON string
    }
  }
}