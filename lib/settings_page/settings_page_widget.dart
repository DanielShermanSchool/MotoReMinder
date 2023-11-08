import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPageWidget extends StatefulWidget {
  final ValueChanged<bool> onThemeChanged;  

  const SettingsPageWidget({Key? key, required this.onThemeChanged}) : super(key: key);

  @override
  _SettingsPageWidgetState createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  bool _notificationsEnabled = false;
  bool _darkModeEnabled = false;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    initializeNotifications();
    loadNotificationPreference();
  }

  // Initialize notifications asynchronously
  Future<void> initializeNotifications() async {
    var initializationSettingsAndroid = AndroidInitializationSettings('appicon1'); //Shows the icon on the notification
    var initializationSettings = InitializationSettings(android: initializationSettingsAndroid); //Sets the initialization settings for android
    
    try {
      await flutterLocalNotificationsPlugin.initialize(initializationSettings); //Basic test to make sure it works
    } catch (e) {
      print("Failed to initialize notifications: $e");
    }
  }

  Future<void> _showNotification() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'MotoReMinder', 'Reminder!',
        importance: Importance.max, priority: Priority.high, showWhen: false); //Notification perameters
    var platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, 'Remember!', 'Don\'t forget to update your car info!', platformChannelSpecifics,
        payload: 'item x'); //Notification and what it's supposed to show.
  }

  Future<void> loadNotificationPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _notificationsEnabled = prefs.getBool('notificationsEnabled') ?? false;
    });
  }

  Future<void> saveNotificationPreference(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('notificationsEnabled', value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
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
      // Notifications toggle button
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Notifications'),
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                  saveNotificationPreference(value);
                  if (_notificationsEnabled) {
                    _showNotification();
                  }
                });
              },
              //secondary: const Icon(Icons.lightbulb_outline),
            ),
            // Dark mode toggle button 
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
                  
                

              },
              //secondary: const Icon(Icons.lightbulb_outline),
            ),
          ],
        ),
      ),
    );
  }
}
