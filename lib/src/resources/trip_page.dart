import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/mytrip.dart';
import 'package:wanderlust_1/src/resources/trip.dart';

class TripPage extends StatefulWidget {
  @override
  _TripPageState createState() => new _TripPageState();
}

class _TripPageState extends State<TripPage> {
  List<TripData> trips = [
    new TripData("assets/images/dalattrip.png", "Đà Lạt, Việt Nam",
        "Chuyến du lịch cuối năm cùng bạn bè", "01/07/2021"),
    new TripData("assets/images/sapatrip.png", "Sa Pa, Việt Nam",
        "Du xuân đầu năm cùng gia đình", "21/02/2022"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false, //ẩn leading
        title: Text(
          'Hành trình của tôi',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.teal),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: double.infinity,
                height: 600,
                child: ListView(
                  children: [
                    MyTrip(trips[0]),
                    SizedBox(height: 10),
                    MyTrip(trips[1]),
                    SizedBox(height: 10)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
