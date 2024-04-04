import 'dart:convert';
import 'dart:io';
import 'package:xml/xml.dart';

class Car {
  Map<String, dynamic> attributes = {};

  Car() {
    loadFromXml();
  }

  void loadFromXml() async {
    final file = File('assets/car_attributes.xml');
    final document = XmlDocument.parse(await file.readAsString());

    for (var element in document.findAllElements('Car').first.children.whereType<XmlElement>()) {
      attributes[element.name.toString()] = element.text;
    }
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