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
    try {
      final file = File('assets/car_attributes.xml');
      if (!await file.exists()) {
        print('XML file not found');
        return;
      }

      final fileContent = await file.readAsString();
      print('XML file content: $fileContent');

      final document = XmlDocument.parse(fileContent);
      var carElements = document.findAllElements('car');

      if (carElements.isEmpty) {
        print('No Car elements found');
        return;
      }

      for (var element in carElements.first.children.whereType<XmlElement>()) {
        attributes[element.name.toString()] = element.text;
      }

      print('car attributes loaded: $attributes');
      // Assuming the first attribute in the XML is the image provider
      String firstAttributeName = document.findAllElements('car').first.children.whereType<XmlElement>().first.name.toString();
      String firstAttributeValue = attributes[firstAttributeName];

      // Assuming the attribute value is a path to an asset image
      imageProvider = AssetImage(firstAttributeValue);
    } catch (e) {
      print('Error loading XML: $e');
    }


    
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