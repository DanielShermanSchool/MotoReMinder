import 'package:flutter/material.dart';
import 'package:moto_re_minder/pages/car_page/car_page_widget.dart';
import 'package:moto_re_minder/pages/help_page/help_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        primarySwatch: Colors.indigo,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: _darkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder:
            (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          var hideHelpPage = snapshot.data!.getBool('hideHelpPage') ?? true;
          return hideHelpPage ? CarPageWidget(onThemeChanged: (bool value) { _onThemeChanged(value); },) : HelpPage();
        },
      ),
    );
  }
}
