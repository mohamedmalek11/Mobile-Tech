import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mobile_tech/components/AppDrawer.dart';

class Test extends StatefulWidget {
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  Future getData() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(Uri.parse(url));
    var responseBody = jsonDecode(response.body);
    return responseBody;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Container(
                width: 230,
                child: Image(
                  image: AssetImage("assets/images/headerLogo.png"),
                  fit: BoxFit.contain,
                )),
            backgroundColor: Colors.black54,
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ],
            centerTitle: true,
            toolbarHeight: 70,
          ),
          drawer: AppDrawer(),

          // the main page
          body: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Container(
                    padding: EdgeInsets.all(10),
                    child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Directionality(
                                      textDirection: TextDirection.ltr,
                                      child: Expanded(
                                        child: Text(
                                          snapshot.data[i]["title"],
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: Text(
                                        snapshot.data[i]["id"].toString(),
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.blueAccent),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10,
                                endIndent: 10,
                                indent: 10,
                              )
                            ],
                          ),
                        );
                      },
                    ));
              }
              return Center(
                  child: CircularProgressIndicator(
                color: Colors.orange,
              ));
            },
          ),
        ));
  }
}
