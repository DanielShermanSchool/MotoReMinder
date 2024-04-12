import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:xml/xml.dart';

class Car {
  Map<String, dynamic> attributes = {}; // Map to store car attributes
  ImageProvider imageProvider; // Image provider for the car

  Car() : imageProvider = AssetImage('path/to/placeholder/image') { //default image
    loadFromXml();
  }

  void loadFromXml() async {
    final file = File('assets/car_attributes.xml');
    final document = XmlDocument.parse(await file.readAsString());

    var carElements = document.findAllElements('Car');
if (carElements.isNotEmpty) {
    for (var element in carElements.first.children.whereType<XmlElement>()) {
        attributes[element.name.toString()] = element.value;
    }
} else {
    print('No Car elements found');
}


    // Assuming the first attribute in the XML is the image provider
    String firstAttributeName = document.findAllElements('Car').first.children.whereType<XmlElement>().first.name.toString();
    String firstAttributeValue = attributes[firstAttributeName];

    // Assuming the attribute value is a path to an asset image
    imageProvider = AssetImage(firstAttributeValue);
  }

  String toJson() { // Convert car object to JSON string
    return jsonEncode(attributes);
  }

  static Car fromJson(String jsonString) { // Create car object from JSON string
    Car car = Car();
    car.attributes = jsonDecode(jsonString);
    return car;
  }

  dynamic getAttribute(String name) { // Get car attribute by name
    return attributes[name];
  }

  void setAttribute(String name, dynamic value) { // Set car attribute by name
    attributes[name] = value;
  }
}