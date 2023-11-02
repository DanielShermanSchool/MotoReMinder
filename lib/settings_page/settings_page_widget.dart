import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPageWidget extends StatefulWidget {
  @override
  _SettingsPageWidgetState createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  //TODO: shared preferences for settings for persistence
  //TODO: make dark mode actually work
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        SwitchListTile(
          title: const Text('Notifications'),
          value: _notificationsEnabled,
          onChanged: (bool value) {
            setState(() {
                _notificationsEnabled = value;
              });
            },
            secondary: const Icon(Icons.lightbulb_outline),
          ),
          SwitchListTile(
          title: const Text('DarkMode'),
          value: _darkModeEnabled,
          onChanged: (bool value) {
            setState(() {
                _darkModeEnabled = value;
              });
            },
            secondary: const Icon(Icons.lightbulb_outline),
          ),
        ],
      ),
    );
  }
}
