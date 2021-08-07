import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mobile_tech/components/appDrawer.dart';
import 'package:mobile_tech/components/productComponent.dart';
import 'package:mobile_tech/components/search.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
// get product data from sql
  Future getProductData() async {
    var data = {"category": "4"};
    var url = "http://10.0.2.2/mobile_tech/index.php";
    var response = await http.post(Uri.parse(url), body: data);
    var responseBody = jsonDecode(response.body);

    return responseBody;
  }

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
          body: Container(
            color: Colors.grey[100].withOpacity(0.3),
            child: ListView(
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
                  child: Text("الماركات",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 23)),
                ),
                Container(
                  height: 160,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    children: [
                      // category
                      categoryBuilder(
                          "assets/images/brands/apple.png", "Apple"),
                      categoryBuilder(
                          "assets/images/brands/huawei.png", "Huawei"),
                      categoryBuilder(
                          "assets/images/brands/nokia.png", "Nokia"),
                      categoryBuilder("assets/images/brands/oppo.png", "Oppo"),
                      categoryBuilder(
                          "assets/images/brands/samsung.png", "Samsung"),
                      categoryBuilder("assets/images/brands/vivo.png", "Vivo"),
                      categoryBuilder(
                          "assets/images/brands/xiaomi.png", "Xiaomi"),
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
                    height: 290,
                    child: FutureBuilder(
                      future: getProductData(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (BuildContext context, i) {
                              return ProductComponent(
                                // pass data to mobile view to show it on screen

                                image: snapshot.data[i]
                                    ["mobile_image".toString()],
                                name: snapshot.data[i]["mobile_name"],
                                cameraShort: snapshot.data[i]["short_camera"],
                                camera: snapshot.data[i]["camera"],
                                memoryShort: snapshot.data[i]
                                    ["mobile_memory_short"],
                                ram: snapshot.data[i]["mobile_ram"],
                                battery: snapshot.data[i]["mobile_battery"],
                                price: snapshot.data[i]["mobile_price"],
                                year: snapshot.data[i]["mobile_year"],
                                system: snapshot.data[i]["mobile_system"],
                                simCount: snapshot.data[i]["mobile_sim_count"],
                                cpu: snapshot.data[i]["mobile_cpu"],
                                memory: snapshot.data[i]["mobile_memory"],
                                exMemory: snapshot.data[i]["mobile_exMemory"],
                                fingerPrint: snapshot.data[i]
                                    ["mobile_finger_print"],
                                fastCharge: snapshot.data[i]
                                    ["mobile_fast_charge"],
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
                    )),
                // end new product

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
                    height: 290,
                    child: FutureBuilder(
                      future: getProductData(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (BuildContext context, i) {
                              return ProductComponent(
                                // pass data to mobile view to show it on screen

                                image: snapshot.data[i]
                                    ["mobile_image".toString()],
                                name: snapshot.data[i]["mobile_name"],
                                cameraShort: snapshot.data[i]["short_camera"],
                                camera: snapshot.data[i]["camera"],
                                memoryShort: snapshot.data[i]
                                    ["mobile_memory_short"],
                                ram: snapshot.data[i]["mobile_ram"],
                                battery: snapshot.data[i]["mobile_battery"],
                                price: snapshot.data[i]["mobile_price"],
                                year: snapshot.data[i]["mobile_year"],
                                system: snapshot.data[i]["mobile_system"],
                                simCount: snapshot.data[i]["mobile_sim_count"],
                                cpu: snapshot.data[i]["mobile_cpu"],
                                memory: snapshot.data[i]["mobile_memory"],
                                exMemory: snapshot.data[i]["mobile_exMemory"],
                                fingerPrint: snapshot.data[i]
                                    ["mobile_finger_print"],
                                fastCharge: snapshot.data[i]
                                    ["mobile_fast_charge"],
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
                    )),
                // end specal
              ],
            ),
          ),
        ));
  }
}

categoryBuilder(categoryImage, categoryName) {
  return InkWell(
    onTap: () {},
    child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        width: 120,
        height: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.grey[300].withOpacity(0.5),
                offset: const Offset(
                  2.0,
                  2.0,
                ),
              )
            ]),
        child: ListTile(
          title: Image.asset(
            categoryImage,
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
          subtitle: Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Text(
                categoryName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black),
              )),
        )),
  );
}
