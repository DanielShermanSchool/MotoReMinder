import 'package:flutter_test/flutter_test.dart';
import 'package:moto_re_minder/car_object.dart';

void main() {
  testWidgets('car object ...', (tester) async {
    //create car
    Car myCar = new Car(null, 0, 0, 'this', 'is', 'a', 'test', 10, 10, 0, 0, 10, 10, 0, 0, 10, 10, 0, 0, 10, 10, 0, 0, 10, 10, 0, 0, 10, 10, 0, 0, 10, 10, 0, 0, 10, 10, 0, 0);
    //test car
    String myString = myCar.toString();
    Car myCar2 = Car.parseCar(myString);
    String myString2 = myCar2.toString();
    expect(myString, myString2);
  });
}