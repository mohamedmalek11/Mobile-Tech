import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_tech/components/appDrawer.dart';
import 'package:mobile_tech/components/homeButton.dart';

class MobileDetails extends StatelessWidget {
  final image;
  final nameD;
  final cameraShortD;
  final cameraD;
  final memoryShortD;
  final ramD;
  final batteryD;
  final priceD;
  final yearD;
  final systemD;
  final simCountD;
  final cpuD;
  final memoryD;
  final exMemoryD;
  final fingerPrintD;
  final fastChargeD;

  const MobileDetails(
      {Key key,
      this.image,
      this.nameD,
      this.cameraShortD,
      this.cameraD,
      this.memoryShortD,
      this.ramD,
      this.batteryD,
      this.priceD,
      this.yearD,
      this.systemD,
      this.simCountD,
      this.cpuD,
      this.memoryD,
      this.exMemoryD,
      this.fingerPrintD,
      this.fastChargeD})
      : super(key: key);

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
                "التفاصيل",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.black54,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        size: 30,
                      ),
                      onPressed: () {
                        return Navigator.of(context).maybePop();
                      }),
                )
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
                  child: Hero(
                    tag: "$image tag",
                    child: CachedNetworkImage(
                      imageUrl: image,
                      placeholder: (context, url) => Container(
                          width: 20,
                          height: 20,
                          child: Center(
                              child: CircularProgressIndicator(
                            color: Colors.orange,
                          ))),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      width: 100,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
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
                                    child: Text(nameD,
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
                                child: Text(priceD,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                    ))),
                          ],
                        ),
                      ),
                      containerBuilder(context, "تاريخ الاصدار", yearD),
                      containerBuilder(context, "نظام التشغيل:", systemD),
                      containerBuilder(context, "عدد الشرائح:", simCountD),

                      nameContainer("الهاردوير"),

                      containerBuilder(context, "الكاميرا", cameraD),
                      containerBuilder(context, "المعالج:", cpuD),
                      containerBuilder(context, "الرامات", ramD),
                      containerBuilder(context, "المساحة الداخلية:", memoryD),
                      containerBuilder(context, "مدخل الذاكرة:", exMemoryD),
                      containerBuilder(context, "بصمة الاصبع:", fingerPrintD),

                      nameContainer("البطارية"),

                      containerBuilder(context, "السعة:", batteryD),
                      containerBuilder(context, "شحن سريع:", fastChargeD)
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
