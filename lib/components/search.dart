import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mobile_tech/components/mobileListView.dart';

class DataSearch extends SearchDelegate {
  List list;
  DataSearch({this.list});

  Future getSearchData() async {
    var url = "http://10.0.2.2/mobile_tech/searchMobile.php";
    var response = await http.post(Uri.parse(url), body: {"mobileName": query});
    var responseBody = jsonDecode(response.body);
    return responseBody;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // action like appbar
    if (query.isEmpty) {
      return null;
    }
    return [
      TextButton(
          onPressed: () {
            query = "";
          },
          child: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icon leading
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(
        Icons.keyboard_arrow_left,
        size: 30,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Serach results

    return FutureBuilder(
      future: getSearchData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, i) {
              return Directionality(
                textDirection: TextDirection.rtl,
                child: MobileListView(
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
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(child: Text(snapshot.error));
        }
        return Center(
            child: CircularProgressIndicator(
          color: Colors.orange,
        ));
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // sugestions
    var serachResult = query.isEmpty
        ? list
        : list.where((element) => element.contains(query)).toList();

    return ListView.builder(
        itemCount: serachResult.length,
        itemBuilder: (context, i) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: ListTile(
              leading: Icon(Icons.search),
              title: Text(serachResult[i]),
              onTap: () {
                buildResults(context);
                query = serachResult[i];
              },
            ),
          );
        });
  }
}
