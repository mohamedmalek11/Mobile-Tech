import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_tech/pages/MobileDetails.dart';

class MobileListView extends StatelessWidget {
  final image;
  final name;
  final cameraShort;
  final camera;
  final memoryShort;
  final ram;
  final battery;
  final price;
  final year;
  final system;
  final simCount;
  final cpu;
  final memory;
  final exMemory;
  final fingerPrint;
  final fastCharge;

  const MobileListView(
      {Key key,
      this.image,
      this.name,
      this.cameraShort,
      this.camera,
      this.memoryShort,
      this.ram,
      this.battery,
      this.price,
      this.year,
      this.system,
      this.simCount,
      this.cpu,
      this.memory,
      this.exMemory,
      this.fingerPrint,
      this.fastCharge})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        height: 165,
        child: Card(
          child: Row(
            children: [
              Container(
                  padding: EdgeInsetsDirectional.all(10),
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
                  )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // mobile name
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            // Mobile camera
                            child: Text(
                              "الكاميرا: $cameraShort MP",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                          Expanded(
                            // memory
                            child: Text(
                              "المساحة: $memoryShort GB",
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            // mobile RAM
                            child: Text(
                              "الرامات: $ram GB",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                          Expanded(
                            // Battery
                            child: Text(
                              "البطارية: $battery mAh",
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Price
                          Text(
                            "السعر: $price جنيه",
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
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return MobileDetails(
              image: image,
              nameD: name,
              cameraShortD: cameraShort,
              cameraD: camera,
              memoryShortD: memoryShort,
              ramD: ram,
              batteryD: battery,
              priceD: price,
              yearD: year,
              systemD: system,
              simCountD: simCount,
              cpuD: cpu,
              memoryD: memory,
              exMemoryD: exMemory,
              fingerPrintD: fingerPrint,
              fastChargeD: fastCharge);
        }));
      },
    );
  }
}
