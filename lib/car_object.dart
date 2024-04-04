import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:moto_re_minder/progress_object.dart';
import 'package:xml/xml.dart';

class Car {
  Map<String, dynamic> attributes = {};

  Car() {
    loadFromXml();
  }

  void loadFromXml() async {
    final file = File('path_to_your_xml_file.xml');
    final document = XmlDocument.parse(await file.readAsString());

    for (var element in document.findAllElements('Car').first.children.whereType<XmlElement>()) {
      attributes[element.name.toString()] = element.text;
    }
  }
}