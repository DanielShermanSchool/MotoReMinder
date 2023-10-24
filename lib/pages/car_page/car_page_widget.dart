import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moto_re_minder/car_object.dart';
import 'package:moto_re_minder/edit_page/edit_page_widget.dart';
import 'package:moto_re_minder/pages/home_page/home_page_widget.dart';
import 'package:path_provider/path_provider.dart';

class CarPageWidget extends StatefulWidget {
  const CarPageWidget({Key? key}) : super(key: key);

  @override
  _CarPageWidgetState createState() => _CarPageWidgetState();
}

class _CarPageWidgetState extends State<CarPageWidget> {
  List<Car> cars = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          'My cars',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 22.0,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed("SettingsPage");
            },
          ),
        ],
        centerTitle: true,
        elevation: 2.0,
      ),
      floatingActionButton: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,  MaterialPageRoute(builder: (context) => EditPageWidget())); // Navigate to 'EditPage'
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              SizedBox(width: 8), // Add some spacing between the icon and text
              Text('Add Car'),
            ],
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: cars.map((car) {
          return GestureDetector(
            onTap: () {
             Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePageWidget(car: car))
                  );
            },
            onLongPress: () async {
              context.pushNamed("EditPage");
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/appIcon.png'),
                ),
                border: Border.all(
                  color: Colors.black, // You can set your own border color here
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    car.nickname,
                    style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}