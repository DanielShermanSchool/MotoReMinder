import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.directions_car),
              title: Text('Welcome to MotoReMinder.'),
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text('To get started tap the icon on the bottom right named new car.'),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Enter all the information that you can and hit submit at the bottom of the screen.'),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('To get to the check list tap on the car you would like to see.'),
            ),
          ],
        ),
      ),
    );
  }
}


