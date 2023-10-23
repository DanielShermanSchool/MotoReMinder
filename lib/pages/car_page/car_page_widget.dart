import 'package:moto_re_minder/edit_page/edit_page_widget.dart';
import 'package:moto_re_minder/car_object.dart';
import 'package:moto_re_minder/pages/home_page/home_page_widget.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter/material.dart';
import 'car_page_model.dart';
export 'car_page_model.dart';
import 'dart:io';



class CarPageWidget extends StatefulWidget {

  const CarPageWidget({Key? key}) : super(key: key);

  @override
  _CarPageWidgetState createState() => _CarPageWidgetState();
}


class _CarPageWidgetState extends State<CarPageWidget> {
  CarPageModel model = CarPageModel();

  // List of cars
  List<Car> cars = [];

  @override
  void initState() {
    super.initState();
    loadCars();
  }

  Future<void> loadCars() async {
    // Get the path to the directory where the text files are located
    final directory = await getApplicationDocumentsDirectory();
    final path = directory.path;
    final carsDirectory = Directory('$path/cars');

    // Get all the files in the directory
    final files = carsDirectory.listSync();

    for (final file in files) {
      final fileContent = await File(file.path).readAsString();
      final car = Car.parseCar(fileContent);
      cars.add(car);
    }

    // Update the UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Page'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: cars.map((car) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageWidget(car: car)),
                );
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    //image: AssetImage('assets/images/appIcon.png'),
                    image: car.imageProvider ?? AssetImage('assets/images/appIcon.png'), // provide a default image in case car.picture is null
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(child: Text(car.nickname, style: TextStyle(backgroundColor: Colors.white))),
              ),
            );
          }).toList(),
        ),      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditPageWidget()),
          );
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}

