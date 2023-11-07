import 'package:flutter/material.dart';
import 'package:moto_re_minder/pages/car_page/car_page_widget.dart';
import 'package:moto_re_minder/pages/help_page/help_page.dart';
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
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          var showHelpPage = snapshot.data!.getBool('showHelpPage') ?? true;
          return showHelpPage ? HelpPage() : CarPageWidget();
        },
      ),
    );
  }
}