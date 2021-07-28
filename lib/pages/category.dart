import 'package:flutter/material.dart';
import 'package:mobile_tech/components/appDrawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mobile_tech/components/mobileListView.dart';
import 'package:mobile_tech/components/homeButton.dart';

class Apple extends StatefulWidget {
  @override
  AppleState createState() => AppleState();
}

class AppleState extends State<Apple> {
// get data from sql
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
                    // pass data to mobile view to show it on screen

                    name: snapshot.data[i]["mobile_name"],
                    image: snapshot.data[i]["mobile_image"],
                    cameraShort: snapshot.data[i]["short_camera"],
                    camera: snapshot.data[i]["camera"],
                    memoryShort: snapshot.data[i]["mobile_memory_short"],
                    ram: snapshot.data[i]["mobile_ram"],
                    battery: snapshot.data[i]["mobile_battery"],
                    price: snapshot.data[i]["mobile_price"],
                    year: snapshot.data[i]["mobile_year"],
                    system: snapshot.data[i]["mobile_system"],
                    simCount: snapshot.data[i]["mobile_sim_count"],
                    cpu: snapshot.data[i]["mobile_cpu"],
                    memory: snapshot.data[i]["mobile_memory"],
                    exMemory: snapshot.data[i]["mobile_exMemory"],
                    fingerPrint: snapshot.data[i]["mobile_finger_print"],
                    fastCharge: snapshot.data[i]["mobile_fast_charge"],
                  );
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