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
        Navigator.of(context).pushNamed("appDetails");
      },
      child: Container(
        width: 180,
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
    );
  }
}
