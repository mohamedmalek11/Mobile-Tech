import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_tech/pages/MobileDetails.dart';

class ProductComponent extends StatelessWidget {
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

  const ProductComponent(
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
      child: Container(
        width: 180,
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey[300].withOpacity(0.5),
                offset: const Offset(
                  2.0,
                  2.0,
                ),
              )
            ]),
        child: Column(
          children: [
            Hero(
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
                width: 150,
                height: 200,
                fit: BoxFit.cover,
              ),
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
                    text: name,
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
