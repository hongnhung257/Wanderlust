import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget statWidget(String title, String stat) {
  return Expanded(
      child: Column(
    children: [
      Text(
        title,
        style: TextStyle(
            color: Colors.grey,
            // fontWeight: FontWeight.bold,
            fontSize: 18.0),
      ),
      Text(
        stat,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    ],
  ));
}
