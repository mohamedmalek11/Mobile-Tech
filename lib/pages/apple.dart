import 'package:flutter/material.dart';
import 'package:mobile_tech/components/AppDrawer.dart';

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
    
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
        body: ListView.builder(
          itemCount: mobileList.length,
          itemBuilder: (BuildContext context, i) {
            return InkWell(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                height: 160,
                child: Card(
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsetsDirectional.all(10),
                          child: Image.asset(
                            "assets/images/Product1.jpg",
                            width: 100,
                          )),
                      Expanded(
                          child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            // mobile name
                            Text(
                              mobileList [i]["name"],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(

                                    // Mobile camera
                                    child: Text(
                                      "الكاميرا: ${mobileList[i]['camera']} MP",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black54),
                                    ),
                                  ),
                                  Expanded(

                                    // storage
                                    child: Text(
                                      "المساحة: ${mobileList[i]['storage']} GB",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black54),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(

                                    // mobile RAM
                                    child: Text(
                                      "الرامات: ${mobileList[i]['ram']} GB",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black54),
                                    ),
                                  ),
                                  Expanded(

                                    // Battery
                                    child: Text(
                                      "البطارية: ${mobileList[i]['battery']} mAh",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black54),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [

                                  // Price
                                  Text(
                                    "السعر: ${mobileList[i]['price']} جنيه",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "رؤية المزيد",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black26,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_left_outlined,
                                        color: Colors.black26,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
