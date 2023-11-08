import 'package:flutter/material.dart';

import 'index.dart';

void main() async {
 runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}



 
  
  
class _MyAppState extends State<MyApp> {

  bool _darkModeEnabled = false;

  void _onThemeChanged(bool value) {
    setState(() {
      _darkModeEnabled = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MotoReMinder',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: _darkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: CarPageWidget(),
    );
  }
}