import 'package:flutter/cupertino.dart';

class MyModelClass with ChangeNotifier {
  String someValue = "Hello";
  void doSomething() {
    someValue = "GoodBye";
    print(someValue);
    notifyListeners();
  }
}
