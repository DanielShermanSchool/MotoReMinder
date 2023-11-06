import 'package:flutter/material.dart';
import 'package:moto_re_minder/pages/car_page/car_page_widget.dart';
import 'package:moto_re_minder/pages/help_page/help_page.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';


void main() async {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    checkFirstSeen();
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (context) => HelpPage())
      );
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (context) => CarPageWidget())
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}