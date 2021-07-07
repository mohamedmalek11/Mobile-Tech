import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MobileTech',
        home: Directionality(
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
              drawer: Drawer(
                  child: Column(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("mohamed malek"),
                    accountEmail: Text("mohamedmalek@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/image.jpg"),
                            fit: BoxFit.cover)),
                  ),

                  // the drower menu
                  ListTile(
                    title: Text(
                      "الرئيسية",
                      style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                    ),
                    // leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_back_ios_new),
                  ),
                  Container(
                      child: Divider(
                        thickness: 1,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      )),
                  ListTile(
                    title: Text(
                      "الأقسام",
                      style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                    ),
                    // leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_back_ios_new),
                  ),
                  Container(
                      child: Divider(
                        thickness: 1,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      )),
                  ListTile(
                    title: Text(
                      "حسابي",
                      style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                    ),
                    // leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_back_ios_new),
                  ),
                  Container(
                      child: Divider(
                        thickness: 1,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      )),
                  ListTile(
                    title: Text(
                      "من نحن",
                      style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                    ),
                    // leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_back_ios_new),
                  ),
                  Container(
                      child: Divider(
                        thickness: 1,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      )),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: ListTile(
                        title: Text("تسجيل خروج",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                ],
              )),

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
                        Container(
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
                        // category
                        Container(
                            width: 120,
                            height: 120,
                            child: ListTile(
                              title: Image.asset(
                                  "assets/images/brands/huawei.png"),
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
                              title:
                                  Image.asset("assets/images/brands/nokia.png"),
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
                              title:
                                  Image.asset("assets/images/brands/oppo.png"),
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
                              title: Image.asset(
                                  "assets/images/brands/samsung.png"),
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
                              title:
                                  Image.asset("assets/images/brands/vivo.png"),
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
                              title: Image.asset(
                                  "assets/images/brands/xiaomi.png"),
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
                    padding: EdgeInsetsDirectional.all(10),
                    child:
                        Text("أحدث المنتجات", style: TextStyle(fontSize: 23)),
                  ),
                  Container(
                      height: 300,
                      
                      child: GridView(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 30,
                            childAspectRatio: 0.65),
                        children: [
                          // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          //end product 1

                           // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          //end product 1

                           // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          //end product 1

                           // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          //end product 1

                           // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          //end product 1
                          
                        ],
                      )),
                  // end Latest Products

                  // special products
                  Container(
                    padding: EdgeInsetsDirectional.all(10),
                    child:
                        Text("الأكثر تميزا", style: TextStyle(fontSize: 23)),
                  ),
                  Container(
                      height: 300,
                      child: GridView(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 30,
                            childAspectRatio: 0.65),
                        children: [
                          // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          //end product 1

                           // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          //end product 1

                           // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          //end product 1

                           // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          //end product 1

                           // product 1
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
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
                                  width: 140,
                                  height: 180,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Honor 50 SE",
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
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
            )));
  }
}
