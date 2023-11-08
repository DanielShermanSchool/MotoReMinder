import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPageWidget extends StatefulWidget {
  final ValueChanged<bool> onThemeChanged;  

  const SettingsPageWidget({Key? key, required this.onThemeChanged}) : super(key: key);

  @override
  _SettingsPageWidgetState createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        //backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Notifications'),
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
              //secondary: const Icon(Icons.lightbulb_outline),
            ),
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: _darkModeEnabled,
              onChanged: (bool value) async {
              setState(() {
              _darkModeEnabled = value;
                  });
              widget.onThemeChanged(_darkModeEnabled);
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setBool('isDarkModeEnabled', _darkModeEnabled);
                if (_darkModeEnabled) {
                  // Enable dark mode
                  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                    statusBarColor: Colors.black,
                    statusBarIconBrightness: Brightness.light,
                    systemNavigationBarColor: Colors.black,
                    systemNavigationBarIconBrightness: Brightness.light,
                  ));
                } else {
                  // Disable dark mode
                  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                    statusBarColor: Colors.white,
                    statusBarIconBrightness: Brightness.dark,
                    systemNavigationBarColor: Colors.white,
                    systemNavigationBarIconBrightness: Brightness.dark,
                  ));
                }
                // Save the chosen dark mode setting
                  @override
                  void initState() {
                  super.initState();
                  SharedPreferences.getInstance().then((prefs) {
                  setState(() {
                  _darkModeEnabled = prefs.getBool('isDarkModeEnabled') ?? false;
    });
  });
}
                

              },
              //secondary: const Icon(Icons.lightbulb_outline),
            ),
          ],
        ),
      ),
    );
  }
}
