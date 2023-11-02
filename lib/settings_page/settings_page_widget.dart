import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    var SettingsTile;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('General'),
            tiles: [
              SettingsTile.switchTile(
                title: 'Notifications',
                leading: Icon(Icons.notifications),
                switchValue: _notificationsEnabled,
                onToggle: (bool value) {
                  setState(() {
                    _notificationsEnabled = value;
                  });
                },
              ),
              //Toggles on and off the Dark mode
              SettingsTile.switchTile(
                title: 'Dark Mode',
                leading: Icon(Icons.brightness_4),
                switchValue: _darkModeEnabled,
                onToggle: (bool value) {
                  setState(() {
                    _darkModeEnabled = value;
                  });
                },
              ),
            ],
          ),
          /*SettingsSection(
            title: 'Account',
            tiles: [
              SettingsTile(
                title: 'Email',
                subtitle: 'example@gmail.com',
                leading: Icon(Icons.email),
              ),
              SettingsTile(
                title: 'Password',
                leading: Icon(Icons.lock),
              ),*/
            ],
      )
        
      
      );
  }
}