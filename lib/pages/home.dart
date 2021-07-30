import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mobile_tech/components/appDrawer.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
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
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return Directionality(
                            textDirection: TextDirection.rtl,
                            child: AlertDialog(
                              title: Text("البحث"),
                              content: Text("أبحث هنا"),
                              actions: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.orange)),
                                          onPressed: () {},
                                          child: Text("بحث")),
                                    ),
                                    TextButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                      onPressed: () {
                                        return Navigator.of(context).maybePop();
                                      },
                                      child: Text(
                                        "إغلاق",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        });
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
