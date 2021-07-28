import 'package:flutter/material.dart';
myAppBar(titleText) {
  return AppBar(
              title: Text(
                titleText,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.black54,
              actions: [
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
              ],
              centerTitle: true,
              toolbarHeight: 70,
            );
}