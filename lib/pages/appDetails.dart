import 'package:flutter/material.dart';
import 'package:mobile_tech/components/AppDrawer.dart';
import 'package:mobile_tech/components/homeButton.dart';

class AppDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            drawer: AppDrawer(),
            floatingActionButton: HomeButton(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            appBar: AppBar(
              title: Text(
                "تفاصيل الجهاز",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.black54,
              actions: [
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
              ],
              centerTitle: true,
              toolbarHeight: 70,
            ),
            body: Container(
                child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey[200], width: 2),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 1.5,
                  child: Image.asset(
                    "assets/images/Product1.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      // Name container
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Container(
                                    child: Text("Huawei 50 SE",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )))),
                          ],
                        ),
                      ),
                      // end Name Container

                      // Price
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 7.5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                  child: Text("السعر:",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                      ))),
                            ),
                            Container(
                                child: Text("5000 جنيه",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                    ))),
                          ],
                        ),
                      ),

                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                  child: Text("تاريخ الأصدار:",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ))),
                            ),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text: "مارس 2019",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                  child: Text("نظام التشغيل:",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ))),
                            ),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text: "Android 10.0",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                  child: Text("عدد الشرائح:",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ))),
                            ),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text: "شريحة أو شريحتين",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // end container

                      // Name container
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 7.5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Container(
                                    child: Text("هاردوير",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )))),
                          ],
                        ),
                      ),
                      // end Name Container

                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text("الكاميرا:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ))),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text:
                                              "خلفية مزدوجة 13+2 م.ب. / امامية مزدوجة 16+2 م",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // end container

                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text("المعالج:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ))),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text:
                                              "ثماني النواة Hisilicon Kirin 710 تكنولوجيا 12 نانو",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // end container

                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text("الرامات:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ))),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text: "4 أو 6 جيجا رام",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // end container

                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text("المساحة الداخلية:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ))),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text: "128 جيجا بايت",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // end container

                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 40),
                                child: Text("مدخل الذاكرة:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ))),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text:
                                              "يدعم حتى 512 جيجا ويتم تركيب الكارت بدلا من sim2",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // end container

                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 40),
                                child: Text("بصمة الإصبع:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ))),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text: "في الخلف",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // end container

                      // Name container
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 7.5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Container(
                                    child: Text("البطارية",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )))),
                          ],
                        ),
                      ),
                      // end Name Container

                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 40),
                                child: Text("السعة:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ))),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text: "3340 مللي أمبير",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // end container

                      // Details:
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 7.5,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 20.0,
                                spreadRadius: 10.0,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 40),
                                child: Text("شحن سريع:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ))),
                            Expanded(
                              child: Container(
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text: "نعم",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          )))),
                            ),
                          ],
                        ),
                      ),
                      // end container
                    ],
                  ),
                ),
              ],
            ))));
  }
}
