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
              title: Text('\t\t\t\t\t\t\t\t\tWelcome to MotoReMinder!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text('To add a car tap the icon on the bottom right named new car with the icon shown on the left.'),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 0,
                      child: Text('\u2022', 
                      textAlign: TextAlign.right, 
                      style: TextStyle(fontSize: 20)
                      ),
                    ),
                    SizedBox(width: 8.0), // You can adjust this value as per your preference
                    Expanded(
                      flex: 9,
                      child: Text('This will take you to a page where you will be asked to enter all the information about your car.', 
                      style: TextStyle(
                        color: Colors.white
                        ),
                        ),
                    ),
                  ],
                ),
              ),
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