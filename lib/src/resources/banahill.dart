import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/da_nang_page.dart';
import 'package:wanderlust_1/src/resources/mylocation.dart';
import 'package:wanderlust_1/src/resources/location.dart';
import 'package:wanderlust_1/src/resources/mytrip.dart';
import 'package:wanderlust_1/src/resources/trip.dart';

class BaNaHill extends StatefulWidget {
  @override
  _BaNaHillState createState() => new _BaNaHillState();
}

class _BaNaHillState extends State<BaNaHill> {
  bool _click = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 950,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
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
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/banahill.png"),
                            fit: BoxFit.fill)),
                    height: MediaQuery.of(context).size.height * 0.3),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF464646),
                        size: 35,
                      ),
                      SizedBox(width: 5),
                      Text("Đà Nẵng, Việt Nam",
                          style: TextStyle(
                              color: Colors.black87.withOpacity(0.7),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 95),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          //handle action
                          onTap: click,
                          child: _click
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 40,
                                )
                              : Icon(
                                  Icons.favorite_outline,
                                  color: Colors.red,
                                  size: 40,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Text("Bà Nà Hill",
                      style: TextStyle(
                          color: Colors.black87.withOpacity(0.7),
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 0, 240, 0),
                  child: Divider(
                    //dải phân cách
                    height: 0,
                    thickness: 3,
                    color: Colors.teal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border, color: Colors.pink, size: 30),
                      Text(
                        "5K yêu thích",
                        style: TextStyle(
                            color: Colors.black87.withOpacity(0.7),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.comment, color: Colors.grey[600], size: 30),
                      Text(
                        "3.2K đánh giá",
                        style: TextStyle(
                            color: Colors.black87.withOpacity(0.7),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Text(
                    "Bà Nà là khu du lich toạ lạc 1 khu vực thuộc về dãy núi Trường Sơn nằm ở xã Hòa Ninh, huyện Hòa Vang, cách Đà Nẵng 25 km về phía Tây Nam. Trung tâm du lịch của Bà Nà nằm trên đỉnh Núi Chúa có độ cao 1489 m so với mực nước biển. Bà Nà được ví von như Đà Lạt của miền trung hay ‘’lá phổi xanh’’, ‘’hòn ngọc khí hậu’’ của Việt Nam.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                  child: Text("BẠN MUỐN ?",
                      style: TextStyle(
                          color: Colors.black87.withOpacity(0.7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 5, 270, 0),
                  child: Divider(
                    //dải phân cách
                    height: 0,
                    thickness: 3,
                    color: Colors.teal,
                  ),
                ),
                Expanded(
                    child: Container(
                  child: GridView.count(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        elevation: 3,
                        margin: EdgeInsets.all(20.0),
                        color: Colors.teal,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.teal,
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 100, 0),
                                  child: Icon(Icons.directions_car_outlined,
                                      size: 40.0, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text("Chỉ đường",
                                    style: new TextStyle(
                                        fontSize: 23.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(20.0),
                        elevation: 3,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.teal,
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 100, 0),
                                  child: Icon(Icons.bed_sharp,
                                      size: 40.0, color: Colors.teal),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Khách sạn",
                                    style: new TextStyle(
                                        fontSize: 23.0,
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Text("gần đây",
                                      style: new TextStyle(
                                          fontSize: 23.0,
                                          color: Colors.teal,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(20.0),
                        elevation: 3,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.teal,
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 100, 0),
                                  child: Icon(Icons.restaurant,
                                      size: 40.0, color: Colors.teal),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Text("Nhà hàng",
                                      style: new TextStyle(
                                          fontSize: 23.0,
                                          color: Colors.teal,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Text("gần đây",
                                      style: new TextStyle(
                                          fontSize: 23.0,
                                          color: Colors.teal,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 3,
                        margin: EdgeInsets.all(20.0),
                        color: Colors.teal,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.teal,
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 100, 0),
                                  child: Icon(Icons.chat_outlined,
                                      size: 40.0, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Text("Người dùng",
                                      style: new TextStyle(
                                          fontSize: 23.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Text("đánh giá",
                                      style: new TextStyle(
                                          fontSize: 23.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void click() {
    setState(() {
      _click = !_click;
    });
  }
}
