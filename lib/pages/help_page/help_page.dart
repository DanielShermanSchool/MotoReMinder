import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Center(
        //child: Text('This is the Help Page'),
        child: Text( '                                Welcome to MotoReMinder.' +
        '\n\nTo get started tap the icon on the bottom right named new car.' +
        '\n\nEnter all the information that you can and hit submit at the bottom of the screen.' +
        '\n\nIf you want to edit a car than tap and hold which car you would like to edit.' +
        '\n\nTo get to the check list tap on the car you would like to see.'
        ),
      ),
    );
  }
}
