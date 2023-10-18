import 'package:flutter_test/flutter_test.dart';
import 'package:moto_re_minder/car_object.dart';

void main() {
  testWidgets('car object ...', (tester) async {
    //create car
    Car myCar = new Car(null, 1, 2, 'this', 'is', 'a', 'test', 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36);
    //test car
    String myString = myCar.toString();
    Car myCar2 = Car.parseCar(myString);
    String myString2 = myCar2.toString();
    expect(myString, myString2);
  });
}