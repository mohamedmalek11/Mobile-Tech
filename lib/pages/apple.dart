import 'package:flutter/material.dart';
import 'package:mobile_tech/components/AppDrawer.dart';

class Apple extends StatefulWidget {
  @override
  AppleState createState() => AppleState();
}

class AppleState extends State<Apple> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Apple"),
          backgroundColor: Colors.black54,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
          centerTitle: true,
          toolbarHeight: 70,
        ),
        drawer: AppDrawer(),
        body: Container(
          child: Center(child: Text("Apple")),
        ),
      ),
    );
  }
}
