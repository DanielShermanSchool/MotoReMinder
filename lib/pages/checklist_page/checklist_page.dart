import 'package:moto_re_minder/car_object.dart';

import 'package:flutter/material.dart';
export 'home_page_model.dart';

class ChecklistPage extends StatelessWidget {
  final Car car;


  const ChecklistPage({required this.car});

  @override
  Widget build(BuildContext context) {
    String name = car.nickname;
    // double carOilLast = car.lastChangedEngineOilAndFilter.toDouble();
    // double carOilInter = car.intervalEngineOilAndFilter.toDouble();
    // double tester = car.oilChangeProgress.toDouble();
    // print(tester);
    // print(carOilLast);
    // print(carOilInter);
    //REMOVE ONCE DONE TESTING
    return Scaffold(
      appBar: AppBar(
        title: Text('$name Checklist!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text('Oil Change Progress', style: TextStyle(fontSize: 24)),
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 30, // Adjust this value to change the height of the progress bar
                  child: LinearProgressIndicator(value: car.oilChangeProgress.toDouble()),
                ),
                Center(
                  child: Text('${(car.oilChangeProgress * 100).toStringAsFixed(1)}%'), // This will display the progress as a percentage
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}