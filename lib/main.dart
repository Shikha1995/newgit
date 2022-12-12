import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
  print("camera");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModelClass>(
      create: (context) => MyModelClass(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text("MyApp"),
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Consumer<MyModelClass>(
                    builder: (context, MyModelClass, child) => ElevatedButton(
                      child: Text("Do Something"),
                      onPressed: () {
                        MyModelClass.doSomething();
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.green,
                  child: Consumer<MyModelClass>(
                    builder: (context, MyModelClass, child) {
                      return Text(MyModelClass.someValue);
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
