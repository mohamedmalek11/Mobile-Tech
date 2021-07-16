import 'package:flutter/material.dart';
import 'package:mobile_tech/components/AppDrawer.dart';

class Categories extends StatefulWidget {
  @override
  CategoriesState createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("الماركات"),
          backgroundColor: Colors.black54,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
          centerTitle: true,
          toolbarHeight: 70,
        ),
        drawer: AppDrawer(),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              childAspectRatio: 0.8,
            ),
            children: [
              InkWell(
                onTap: () {
                        Navigator.of(context).pushNamed("apple");
                      },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Card(
                      child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/images/brands/apple.png",
                      )),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: RichText(
                            text: TextSpan(
                          text: 'APPLE',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  )),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Card(
                      child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/images/brands/huawei.png",
                      )),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: RichText(
                            text: TextSpan(
                          text: 'HUAWEI',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  )),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Card(
                      child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/images/brands/nokia.png",
                      )),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: RichText(
                            text: TextSpan(
                          text: 'NOKIA',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  )),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Card(
                      child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/images/brands/oppo.png",
                      )),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: RichText(
                            text: TextSpan(
                          text: 'OPPO',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  )),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Card(
                      child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/images/brands/samsung.png",
                      )),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: RichText(
                            text: TextSpan(
                          text: 'SAMSUNG',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  )),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Card(
                      child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/images/brands/vivo.png",
                      )),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: RichText(
                            text: TextSpan(
                          text: 'VIVO',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  )),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Card(
                      child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/images/brands/xiaomi.png",
                      )),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: RichText(
                            text: TextSpan(
                          text: 'XIAOMI',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
