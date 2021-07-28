import 'package:flutter/material.dart';
import 'package:mobile_tech/components/appBar.dart';
import 'package:mobile_tech/components/appDrawer.dart';
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
            appBar: myAppBar("تفاصيل الجهاز"),
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
                      containerBuilder(context, "تاريخ الاصدار", "3300"),
                      containerBuilder(context, "نظام التشغيل:", "3300"),
                      containerBuilder(context, "عدد الشرائح:", "3300"),

                      nameContainer("الهاردوير"),

                      containerBuilder(context, "الكاميرا", "3300"),
                      containerBuilder(context, "المعالج:", "3300"),
                      containerBuilder(context, "الرامات", "3300"),
                      containerBuilder(context, "المساحة الداخلية:", "128"),
                      containerBuilder(context, "مدخل الذاكرة:", "3300"),
                      containerBuilder(context, "بصمة الاصبع:", "في الخلف"),

                      nameContainer("البطارية"),

                      containerBuilder(context, "السعة:", "3300"),
                      containerBuilder(context, "شحن سريع:", "نعم")
                    ],
                  ),
                ),
              ],
            ))));
  }
}

// the style of all details elements:
containerBuilder(
  context,
  mainText,
  details,
) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: 7.5,
    ),
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
        // main text style
        Container(
            padding: EdgeInsets.only(left: 40),
            child: Text(mainText,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ))),
        // details style
        Expanded(
          child: Container(
              child: RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                      text: details,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      )))),
        ),
      ],
    ),
  );
}

// main name container style
nameContainer(name) {
  return Container(
    margin: EdgeInsets.only(top: 15, bottom: 7.5),
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                child: Text(name,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )))),
      ],
    ),
  );
}
