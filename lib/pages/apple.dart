import 'package:flutter/material.dart';
import 'package:mobile_tech/components/AppDrawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
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

  Future getData() async {
    var url = "http://10.0.2.2/mobile_tech/index.php";
    var response = await http.get(Uri.parse(url));
    var responseBody = jsonDecode(response.body);

    return responseBody;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: HomeButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, i) {
                  return MobileListView(
                      name: snapshot.data[i]["mobile_name"],
                      camera: snapshot.data[i]["short_camera"],
                      storage: snapshot.data[i]["mobile_memory_short"],
                      ram: snapshot.data[i]["mobile_ram"],
                      battery: snapshot.data[i]["mobile_battery"],
                      price: snapshot.data[i]["mobile_fast_charge"]);
                },
              );
            }
            return Center(
                child: CircularProgressIndicator(
              color: Colors.orange,
            ));
          },
        ),
      ),
    );
  }
}
