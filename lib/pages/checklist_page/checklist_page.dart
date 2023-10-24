import 'package:moto_re_minder/car_object.dart';

import 'package:flutter/material.dart';
export 'home_page_model.dart';

class ChecklistPage extends StatelessWidget {
  final Car car;

  const ChecklistPage({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Status'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text('Oil Change Progress', style: TextStyle(fontSize: 24)),
            LinearProgressIndicator(value: car.oilChangeProgress.toDouble()),
          ],
        ),
      ),
    );
  }
}