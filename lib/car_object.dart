import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:xml/xml.dart';

class Car {
  Map<String, dynamic> attributes = {};
  ImageProvider imageProvider;

  Car() : imageProvider = AssetImage('path/to/placeholder/image') {
    loadFromXml();
  }

  void loadFromXml() async {
    final file = File('assets/car_attributes.xml');
    final document = XmlDocument.parse(await file.readAsString());

    for (var element in document.findAllElements('Car').first.children.whereType<XmlElement>()) {
      attributes[element.name.toString()] = element.text;
    }

    // Assuming the first attribute in the XML is the image provider
    String firstAttributeName = document.findAllElements('Car').first.children.whereType<XmlElement>().first.name.toString();
    String firstAttributeValue = attributes[firstAttributeName];

    // Assuming the attribute value is a path to an asset image
    imageProvider = AssetImage(firstAttributeValue);
  }

  String toJson() {
    return jsonEncode(attributes);
  }

  static Car fromJson(String jsonString) {
    Car car = Car();
    car.attributes = jsonDecode(jsonString);
    return car;
  }

  dynamic getAttribute(String name) {
    return attributes[name];
  }

  void setAttribute(String name, dynamic value) {
    attributes[name] = value;
  }
}