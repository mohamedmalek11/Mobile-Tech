import 'package:flutter/material.dart';
import 'package:mobile_tech/pages/MobileDetails.dart';
import 'package:mobile_tech/pages/category.dart';
import 'package:mobile_tech/pages/categories.dart';
import 'package:mobile_tech/pages/home.dart';
// ignore: unused_import
import 'package:mobile_tech/pages/test.dart';

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
      theme: ThemeData(fontFamily: "Almarai"),
      home: Home(),
      routes: {
        "categories": (context) {
          return Categories();
        },
        "homePage": (context) {
          return Home();
        },
        "apple": (context) {
          return Apple();
        },
        "MobileDetails": (context) {
          return MobileDetails();
        },
      },
    );
  }
}
