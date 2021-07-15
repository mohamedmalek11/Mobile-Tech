import 'package:flutter/material.dart';
import 'package:mobile_tech/pages/categories.dart';
import 'package:mobile_tech/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MobileTech',
      home: Home(),
      routes: {
        "categories": (context) {
          return Categories();
        },
        "homePage": (context) {
          return Home();
        }
      },
    );
  }
}
