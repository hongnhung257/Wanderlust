import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool _click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.more_vert, color: Colors.white, size: 35))
          ],
        ),
        body: Container(
            child: Column(children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/post5.png"),
                      fit: BoxFit.fill)),
              height: MediaQuery.of(context).size.height * 0.5),
          ListTile(
            leading: Wrap(
              children: [
                Container(
                  child: GestureDetector(
                    //handle action
                    onTap: click,
                    child: _click
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          )
                        : Icon(
                            Icons.favorite_outline,
                            color: Colors.red,
                            size: 30,
                          ),
                  ),
                ),
                Text(
                  "1",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(width: 20),
                Icon(Icons.chat, color: Colors.grey, size: 30),
                Text(
                  "0",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(width: 20),
                Icon(Icons.share, color: Colors.grey, size: 30),
                Text(
                  "0",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 25, 0, 0),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.transparent),
                      image: DecorationImage(
                          image: AssetImage('assets/images/avatar.jpg')),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(80, 15, 0, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Đặng Hồng Nhung",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(width: 10),
                            Text("1 tiếng trước",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.5))),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 80, 0),
                          child: Text(
                              "Quán café thú cưng chó mèo mới nè mọi người ơi 😘😘😘"),
                        ),
                        SizedBox(height: 5),
                        Text(
                            "#66 Trần Bình Trọng, Phước Ninh, Hải Châu, Đà Nẵng",
                            style: TextStyle(color: Colors.teal))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ])));
  }

  void click() {
    setState(() {
      _click = !_click;
    });
  }
}
