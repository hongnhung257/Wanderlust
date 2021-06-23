import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wanderlust_1/src/resources/da_nang_page.dart';
import 'package:wanderlust_1/src/resources/infoprofile.dart';
import 'package:wanderlust_1/src/resources/location.dart';
import 'package:wanderlust_1/src/resources/ads_data.dart';
import 'package:wanderlust_1/src/resources/trending_destination_data.dart';
import 'package:wanderlust_1/src/resources/login_page.dart';
import 'package:wanderlust_1/src/resources/tips.dart';
import 'mylocation.dart';
import 'ads.dart';
import 'trending_destination.dart';
import 'tips.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  List<LocationData> locations = [
    new LocationData(
      "assets/images/cau_rong.png",
      "Đà Nẵng",
      "Việt Nam",
    ),
    new LocationData(
      "assets/images/hue.png",
      "Huế",
      "Việt Nam",
    ),
    new LocationData(
      "assets/images/da_lat.png",
      "Đà Lạt",
      "Việt Nam",
    ),
    new LocationData(
      "assets/images/hanoi.jpg",
      "Hà Nội",
      "Việt Nam",
    ),
  ];
  List<AdvertisementData> adss = [
    new AdvertisementData(
      "assets/images/ads1.jpeg",
    ),
    new AdvertisementData(
      "assets/images/ads2.jpg",
    ),
  ];
  List<TDData> tds = [
    new TDData(
      "assets/images/trending_destination1.png",
    ),
    new TDData(
      "assets/images/trending_destination2.png",
    ),
    new TDData(
      "assets/images/trending_destination3.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 140,
          backgroundColor: Colors.white,
          actions: <Widget>[
            new Container(),
          ],
          title: Column(children: [
            Row(children: [
              Text(
                'WANDERLUST',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              SizedBox(width: 113),
              Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.teal,
                  iconSize: 35,
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              )
            ]),
            Theme(
                data: new ThemeData(
                  primaryColor: Colors.teal,
                  primaryColorDark: Colors.teal,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: "Tìm kiếm",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.teal, width: 1)),
                  ),
                ))
          ]),
        ),
        endDrawer: new Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: new Text(
                  "Đặng Hồng Nhung",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                accountEmail: new Text("nhonho2507@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.jpg"),
                ),
                decoration: new BoxDecoration(color: Colors.teal),
              ),
              ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (ctxt) => new InfoProfile()));
                  },
                  leading: Icon(
                    Icons.person,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "Tài khoản",
                    style: TextStyle(fontSize: 17, color: Colors.teal),
                  )),
              ListTile(
                  leading: Icon(
                    Icons.add_alert_outlined,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "Thông báo",
                    style: TextStyle(fontSize: 17, color: Colors.teal),
                  )),
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.teal,
                ),
                title: Text(
                  "Hỗ trợ",
                  style: TextStyle(fontSize: 17, color: Colors.teal),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (ctxt) => new LoginPage()));
                },
                leading: Icon(Icons.exit_to_app, color: Colors.teal),
                title: Text(
                  "Đăng xuất",
                  style: TextStyle(fontSize: 17, color: Colors.teal),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: SizedBox(
                      width: double.infinity,
                      height: 90,
                      child: Container(
                        color: Colors.grey[200],
                        child: Column(children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(110, 5, 0, 0),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  color: Colors.teal[400],
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  iconSize: 40,
                                  icon: Icon(Icons.post_add_rounded),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(50, 5, 0, 0),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  color: Colors.teal[400],
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  iconSize: 40,
                                  icon: Icon(Icons.lightbulb_outline),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Tips_page()));
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(85, 3, 0, 0),
                                child: Text(
                                  'Thêm bài viết',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.teal),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(30, 3, 0, 0),
                                child: Text(
                                  'Mẹo vặt',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.teal),
                                ),
                              ),
                            ],
                          )
                        ]),
                      )),
                ),
                Row(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "Thành phố phổ biến",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(55, 0, 0, 0),
                    child: TextButton(
                      child: Text(
                        "Xem thêm >>",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      ),
                      onPressed: () {},
                    ),
                  )
                ]),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  width: double.infinity,
                  height: 250.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [
                          Mylocation(locations[0]),
                          Container(
                            width: 122,
                            height: 200,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DaNangPage()));
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Mylocation(locations[1]),
                      SizedBox(width: 10),
                      Mylocation(locations[2]),
                      SizedBox(width: 10),
                      Mylocation(locations[3]),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  width: double.infinity,
                  height: 100.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Advertisement(adss[0]),
                      SizedBox(width: 10),
                      Advertisement(adss[1]),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                Row(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "Địa điểm thịnh hành",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: TextButton(
                      child: Text(
                        "Xem thêm >>",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      ),
                      onPressed: () {},
                    ),
                  )
                ]),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  width: double.infinity,
                  height: 110.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TrendingDestination(tds[0]),
                      SizedBox(width: 10),
                      TrendingDestination(tds[1]),
                      SizedBox(width: 10),
                      TrendingDestination(tds[2]),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
