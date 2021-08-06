import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mobile_tech/components/appDrawer.dart';
import 'package:mobile_tech/components/mobileListView.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  var listSearch = [];
  // getting mobiles from server:
  Future getData() async {
    var url = "http://10.0.2.2/mobile_tech/search.php";
    var response = await http.post(Uri.parse(url));
    var responseBody = jsonDecode(response.body);

    for (var i = 0; i < responseBody.length; i++) {
      listSearch.add(responseBody[i]["mobile_name"]);
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
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
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    return showSearch(
                        context: context,
                        delegate: DataSearch(list: listSearch));
                  }),
            ],
            centerTitle: true,
            toolbarHeight: 70,
          ),
          drawer: AppDrawer(),

          // the main page
          body: ListView(
            children: [
              // slider section
              SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Carousel(
                    images: [
                      AssetImage("assets/images/template1.png"),
                      AssetImage("assets/images/template2.png"),
                      AssetImage("assets/images/template1.png"),
                      AssetImage("assets/images/template2.png"),
                    ],
                    dotSize: 5.0,
                    dotIncreaseSize: 1.6,
                    dotIncreasedColor: Colors.orange,
                    dotSpacing: 15.0,
                    dotBgColor: Colors.black12.withOpacity(0.1),
                    indicatorBgPadding: 7.0,
                    autoplayDuration: Duration(seconds: 5),
                    overlayShadow: false,
                    overlayShadowColors: Colors.black,
                    overlayShadowSize: 0.5,
                  )),
              // end of slider section

              // Category section
              Container(
                padding: EdgeInsetsDirectional.only(top: 10),
                color: Colors.grey[200],
                child: Text("الماركات",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 23)),
              ),
              Container(
                height: 140,
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[200],
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // category 1
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("category");
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 120,
                          child: ListTile(
                            title:
                                Image.asset("assets/images/brands/apple.png"),
                            subtitle: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Text(
                                  "Apple",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16),
                                )),
                          )),
                    ),
                    // category
                    Container(
                        width: 120,
                        height: 120,
                        child: ListTile(
                          title: Image.asset("assets/images/brands/huawei.png"),
                          subtitle: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              child: Text(
                                "Huawei",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              )),
                        )),
                    // category
                    Container(
                        width: 120,
                        height: 120,
                        child: ListTile(
                          title: Image.asset("assets/images/brands/nokia.png"),
                          subtitle: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              child: Text(
                                "Nokia",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              )),
                        )),
                    // category
                    Container(
                        width: 120,
                        height: 120,
                        child: ListTile(
                          title: Image.asset("assets/images/brands/oppo.png"),
                          subtitle: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              child: Text(
                                "Oppo",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              )),
                        )),
                    // category
                    Container(
                        width: 120,
                        height: 120,
                        child: ListTile(
                          title:
                              Image.asset("assets/images/brands/samsung.png"),
                          subtitle: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              child: Text(
                                "Samsung",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              )),
                        )),
                    // category
                    Container(
                        width: 120,
                        height: 120,
                        child: ListTile(
                          title: Image.asset("assets/images/brands/vivo.png"),
                          subtitle: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              child: Text(
                                "Vivo",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              )),
                        )),
                    // category
                    Container(
                        width: 120,
                        height: 120,
                        child: ListTile(
                          title: Image.asset("assets/images/brands/xiaomi.png"),
                          subtitle: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              child: Text(
                                "Xiaomi",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              )),
                        )),
                  ],
                ),
              ),
              // Category end

              // Latest Products Section
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsetsDirectional.all(10),
                child: Text("أحدث المنتجات", style: TextStyle(fontSize: 23)),
              ),
              Container(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // product 1
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("appDetails");
                        },
                        child: Container(
                          width: 180,
                          margin: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/Product1.jpg",
                                width: 180,
                                height: 180,
                                fit: BoxFit.contain,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 8),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                    top: 5,
                                  ),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: 'Honor 50 SE',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      //end product 1
                      // product 1
                      Container(
                        width: 180,
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/Product1.jpg",
                              width: 180,
                              height: 180,
                              fit: BoxFit.contain,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(
                                  top: 5,
                                ),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Honor 50 SE',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      //end product 1
                      // product 1
                      Container(
                        width: 180,
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/Product1.jpg",
                              width: 180,
                              height: 180,
                              fit: BoxFit.contain,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(
                                  top: 5,
                                ),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Honor 50 SE',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      //end product 1
                    ],
                  )),
              // end specal

              // Banner
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "assets/images/template1.png",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 150,
                    ),
                  )),

              // special products
              Container(
                padding: EdgeInsetsDirectional.all(10),
                child: Text("الأكثر تميزا", style: TextStyle(fontSize: 23)),
              ),
              Container(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // product 1
                      Container(
                        width: 180,
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/Product1.jpg",
                              width: 180,
                              height: 180,
                              fit: BoxFit.contain,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(
                                  top: 5,
                                ),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Honor 50 SE',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      //end product 1
                      // product 1
                      Container(
                        width: 180,
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/Product1.jpg",
                              width: 180,
                              height: 180,
                              fit: BoxFit.contain,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(
                                  top: 5,
                                ),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Honor 50 SE',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      //end product 1
                      // product 1
                      Container(
                        width: 180,
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/Product1.jpg",
                              width: 180,
                              height: 180,
                              fit: BoxFit.contain,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(
                                  top: 5,
                                ),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Honor 50 SE',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      //end product 1
                    ],
                  )),
              // end specal
            ],
          ),
        ));
  }
}

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
          return ListTile(
            leading: Icon(Icons.search),
            title: Text(serachResult[i]),
            onTap: () {
              buildResults(context);
              query = serachResult[i];
            },
          );
        });
  }
}
