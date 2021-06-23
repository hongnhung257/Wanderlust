import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/ads_data.dart';

Widget Advertisement(AdvertisementData ads) {
  return Container(
    width: 200.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 400.0,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                image: AssetImage(ads.cover), fit: BoxFit.cover),
          ),
        ),
      ],
    ),
  );
}
