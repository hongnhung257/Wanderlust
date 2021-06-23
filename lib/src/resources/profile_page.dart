import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/location.dart';
import 'package:wanderlust_1/src/resources/post.dart';
import 'package:wanderlust_1/src/resources/stat_widget.dart';

import 'mylocation2.dart';

class Profile_page extends StatefulWidget {
  @override
  _Profile_pageState createState() => new _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  List<String> imagePost = [
    "assets/images/post.png",
    "assets/images/post1.png",
    "assets/images/post2.png",
    "assets/images/post3.png",
    "assets/images/post4.png",
    "assets/images/post5.png",
  ];

  List<LocationData> locations = [
    new LocationData(
      "assets/images/cau_rong.png",
      "Đà Nẵng",
      "",
    ),
    new LocationData(
      "assets/images/hue.png",
      "Huế",
      "",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                child: Column(children: [
      Container(height: 850, child: setUserForm())
    ]))));
  }

  Widget setUserForm() {
    return SafeArea(
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/cover.png"),
                      fit: BoxFit.fill)),
              height: MediaQuery.of(context).size.height * 0.3),
          Card(
            elevation: 0,
            margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 100.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 56,
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                  ),
                  // Positioned(
                  //   right: -10,
                  //     bottom: 0,
                  //     child: SizedBox(
                  //       height: 46,
                  //       width: 46,
                  //       child: FlatButton(
                  //         color: Color(0xFFF5F6F9),
                  //         onPressed: (){},
                  //         child:
                  //       ),
                  //
                  //     )
                  // ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Đặng Hồng Nhung",
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Quảng Nam, Đà Nẵng",
                    style: TextStyle(
                      color: Colors.teal,
                      // fontWeight: FontWeight.w200,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      statWidget("Bài viết", "92"),
                      statWidget("Người theo dõi", "500"),
                      statWidget("Đang theo dõi", "50"),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Thành phố đã đi đến",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 192.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Mylocation2(locations[0]),
                              SizedBox(width: 10),
                              Mylocation2(locations[1])
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Divider(
                      //dải phân cách
                      height: 0,
                      thickness: 0.6,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemCount: imagePost.length,
                          itemBuilder: (context, index) {
                            return Center(
                              child: Stack(children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 3.0, vertical: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                        image: AssetImage(imagePost[index]),
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                Container(
                                  width: 122,
                                  height: 200,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PostWidget()));
                                    },
                                  ),
                                )
                              ]),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
