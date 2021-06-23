import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/banahill.dart';
import 'package:wanderlust_1/src/resources/location.dart';
import 'package:wanderlust_1/src/resources/home.dart';
import 'mylocation1.dart';

class DaNangPage extends StatefulWidget {
  @override
  _DaNangPageState createState() => new _DaNangPageState();
}

class _DaNangPageState extends State<DaNangPage> {
  List<LocationData> locations = [
    new LocationData(
      "assets/images/banahill.png",
      "Bà Nà Hill",
      "",
    ),
    new LocationData(
      "assets/images/bienmykhe.png",
      "Biển Mỹ Khê",
      "",
    ),
    new LocationData(
      "assets/images/asiapark.png",
      "Asia Park",
      "",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/cau_rong1.png'),
                  fit: BoxFit.cover))),
      Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withOpacity(0.5),
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.all(8.0),
                hintText: "Tìm kiếm tại Đà Nẵng",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 6),
                  child: Text(
                    "Đà Nẵng",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "Thành phố cảng với bảo tàng điêu khắc Hindu, khu nghỉ dưỡng trên các bãi biển đầy cát, chùa và Ngũ Hành Sơn",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "Phổ biến",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  width: double.infinity,
                  height: 280.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [
                          Mylocation1(locations[0]),
                          Container(
                            width: 122,
                            height: 200,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BaNaHill()));
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Mylocation1(locations[1]),
                      SizedBox(width: 10),
                      Mylocation1(locations[2]),
                      SizedBox(width: 10)
                    ],
                  ),
                ),
              ])))
    ]);
  }

  void click() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });
  }
}
