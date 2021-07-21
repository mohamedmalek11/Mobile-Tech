import 'package:flutter/material.dart';
import 'package:mobile_tech/components/AppDrawer.dart';
import 'package:mobile_tech/components/MobileListView.dart';
import 'package:mobile_tech/components/homeButton.dart';

class Apple extends StatefulWidget {
  @override
  AppleState createState() => AppleState();
}

class AppleState extends State<Apple> {
// mobile list builder:
  var mobileList = [
    {
      "image": "",
      "name": "Huawei Y9",
      "camera": "14",
      "storage": "32/64",
      "ram": "4",
      "battery": "5000",
      "price": "5000",
    },
    {
      "image": "",
      "name": "Huawei Y8",
      "camera": "13",
      "storage": "32",
      "ram": "3",
      "battery": "4000",
      "price": "4500",
    },
     {
      "image": "",
      "name": "Huawei A8",
      "camera": "10",
      "storage": "64",
      "ram": "6",
      "battery": "5000",
      "price": "6000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: HomeButton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
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
        body: ListView.builder(
          itemCount: mobileList.length,
          itemBuilder: (BuildContext context, i) {
            return MobileListView(
                image: mobileList[i]["image"],
                name: mobileList[i]["name"],
                camera: mobileList[i]["camera"],
                storage: mobileList[i]["storage"],
                ram: mobileList[i]["ram"],
                battery: mobileList[i]["battery"],
                price: mobileList[i]["price"]);
          },
        ),
      ),
    );
  }
}
