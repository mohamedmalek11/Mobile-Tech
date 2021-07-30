import 'package:flutter/material.dart';
import 'package:mobile_tech/components/appDrawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mobile_tech/components/mobileListView.dart';

class Category extends StatefulWidget {
  @override
  CategoryState createState() => CategoryState();
}

class CategoryState extends State<Category> {
// get data from sql
  Future getData() async {
    var data = {"category": "4"};
    var url = "http://10.0.2.2/mobile_tech/index.php";
    var response = await http.post(Uri.parse(url), body:data);
    var responseBody = jsonDecode(response.body);

    return responseBody;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "apple",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black54,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 30,
                  ),
                  onPressed: () {
                    return Navigator.of(context).maybePop();
                  }),
            )
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

                    image: snapshot.data[i]["mobile_image".toString()],
                    name: snapshot.data[i]["mobile_name"],
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
