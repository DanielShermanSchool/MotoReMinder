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
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    initializeNotifications();
    loadNotificationPreference();
    loadDarkModePreference();
  }

  Future<void> initializeNotifications() async {

    var initializationSettingsAndroid = AndroidInitializationSettings('appicon1'); //Should set the icon to the notification; something is off
    var initializationSettings = InitializationSettings(android: initializationSettingsAndroid); //Initialization settings. here is where you add IOS as well
//This just makes sure the initializations work
    try {
      await flutterLocalNotificationsPlugin.initialize(initializationSettings); 
    } catch (e) {
      print("Failed to initialize notifications: $e");
    }
  }
  //This sets the actual notification to show.
  Future<void> _showNotification() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'MotoReMinder', 'Reminder!',

        importance: Importance.max, priority: Priority.high, showWhen: true);
    var platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
    //This is the notification data itself.
      await flutterLocalNotificationsPlugin.show(0, 'Remember!', 'Don\'t forget to update your car info!', platformChannelSpecifics,
      payload: 'item x',
    );
  }
  //This shared preference should make sure notifications are remembered
  Future<void> loadNotificationPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _notificationsEnabled = prefs.getBool('notificationsEnabled') ?? false;
    });

    // Check if a month has passed since notifications were enabled
    if (_notificationsEnabled) {
      int lastNotificationTimestamp = prefs.getInt('lastNotificationTimestamp') ?? 0;
      int currentTimestamp = DateTime.now().millisecondsSinceEpoch;

      if (currentTimestamp - lastNotificationTimestamp > 30 * 24 * 60 * 60 * 1000) {
        // More than a month has passed, show the notification
        _showNotification();
        // Update the last notification timestamp
        prefs.setInt('lastNotificationTimestamp', currentTimestamp);
      }
    }
  }
  //This saves the notification saved preference.
  Future<void> saveNotificationPreference(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('notificationsEnabled', value);

    // If notifications are enabled, store the current timestamp
    if (value) {
      prefs.setInt('lastNotificationTimestamp', DateTime.now().millisecondsSinceEpoch);
    }
  }

  Future<void> loadDarkModePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _darkModeEnabled = prefs.getBool('isDarkModeEnabled') ?? false;
      widget.onThemeChanged(_darkModeEnabled);
      if (_darkModeEnabled) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light,
        ));
      } else {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ));
      }
    });
  }

  Future<void> saveDarkModePreference(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkModeEnabled', value);
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
                });
              },
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
                  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                    statusBarColor: Colors.black,
                    statusBarIconBrightness: Brightness.light,
                    systemNavigationBarColor: Colors.black,
                    systemNavigationBarIconBrightness: Brightness.light,
                  ));
                } else {
                  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                    statusBarColor: Colors.white,
                    statusBarIconBrightness: Brightness.dark,
                    systemNavigationBarColor: Colors.white,
                    systemNavigationBarIconBrightness: Brightness.dark,
                  ));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}