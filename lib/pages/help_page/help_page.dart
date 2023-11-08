import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:moto_re_minder/pages/car_page/car_page_widget.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  bool _hideHelpPage = false;

  @override
  void initState() {
    super.initState();
    _loadHelpPagePreference();
  }

  _loadHelpPagePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _hideHelpPage = prefs.getBool('hideHelpPage') ?? false;
    });
  }

  _saveHelpPagePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hideHelpPage', _hideHelpPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'Welcome to MotoReMinder!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Keep Your Maintenance in Check!\n',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text(
                  'The goal of MotoReMinder is to keep you on top of your car\'s maintenance with the use of progress bars! Here on this page you can find general instuctions on how to use this application.'),
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text(
                  'To add a car tap the icon on the bottom right named new car with the icon shown on the left.'),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 0,
                          child: Text('\u2022', textAlign: TextAlign.right),
                        ),
                        SizedBox(
                            width:
                                8.0), // You can adjust this value as per your preference
                        Expanded(
                          flex: 9,
                          child: Text(
                            'This will take you to the new/edit car page where you can enter all the information about your car.',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 8.0), // Add some space between the bullet points
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 0,
                          child: Text('\u2022', textAlign: TextAlign.right),
                        ),
                        SizedBox(
                            width:
                                8.0), // You can adjust this value as per your preference
                        Expanded(
                          flex: 9,
                          child: Text(
                            'Among the information to be filled, you will be asked to give the car a nickname. Nicknames are required to differentiate between other cars you may add.',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 8.0), // Add some space between the bullet points
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 0,
                          child: Text('\u2022', textAlign: TextAlign.right),
                        ),
                        SizedBox(
                            width:
                                8.0), // You can adjust this value as per your preference
                        Expanded(
                          flex: 9,
                          child: Text(
                            "While filling out your car's maintenance intervals, be sure to refer to your car's owners manual for the correct maintenance intervals.",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 8.0), // Add some space between the bullet points
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 0,
                          child: Text('\u2022', textAlign: TextAlign.right),
                        ),
                        SizedBox(
                            width:
                                8.0), // You can adjust this value as per your preference
                        Expanded(
                          flex: 9,
                          child: Text(
                            "If you are unsure or have no record of the last mileage at which you performed a certain maintenance, you can leave a zero in that box. You will be able to edit this later once you are certain of the last changed mileage.",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text(
                  'Once you have added your car, you will see it displayed on the car page with the nickname you have given it. If you do not see your newly added car, restart the applicaiton.'),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 0,
                          child: Text('\u2022', textAlign: TextAlign.right),
                        ),
                        SizedBox(
                            width:
                                8.0), // You can adjust this value as per your preference
                        Expanded(
                          flex: 9,
                          child: Text(
                            'Taping the icon of your car will show you the progress bars detailing how many miles are left until you need to perform a maintenance task.',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 0,
                          child: Text('\u2022', textAlign: TextAlign.right),
                        ),
                        SizedBox(
                            width:
                                8.0), // You can adjust this value as per your preference
                        Expanded(
                          flex: 9,
                          child: Text(
                            'Tap and hold the icon of your car will allow you to edit the intevrals and last changed mileage of your car.',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CheckboxListTile(
              title: Text('Do not show this page on start'),
              value: _hideHelpPage,
              onChanged: (bool? value) async {
                setState(() {
                  _hideHelpPage = value!;
                });
                _saveHelpPagePreference();
              },
            ),
            ElevatedButton(
              child: Text('Continue to MotoReMinder'),
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool('hideHelpPage', _hideHelpPage);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => CarPageWidget(onThemeChanged: (bool value) {  },)));
            },
          ),
        ],
      ),
      ),
    );
  }
}
