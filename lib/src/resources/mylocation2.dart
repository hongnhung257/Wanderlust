import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/location.dart';

Widget Mylocation2(LocationData location) {
  return Container(
    width: 122.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150.0,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                image: AssetImage(location.cover), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(location.name, style: TextStyle(color: Colors.black)),
        Text(location.decription, style: TextStyle(color: Colors.grey)),
      ],
    ),
  );
}
