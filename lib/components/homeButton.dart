import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("homePage");
        },
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.home,
          size: 30,
        ),
      ),
    );
  }
}
