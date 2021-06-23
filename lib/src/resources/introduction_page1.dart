import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Login_Register.dart';
import 'introduction_page2.dart';

class introduction extends StatefulWidget {
  @override
  _introductionState createState() => new _introductionState();
}

class _introductionState extends State<introduction> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true, //mở rộng Body được ẩn dưới appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, //mức nổi bật(đổ bóng)
        leading: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Image.asset(
            "assets/images/IconAppBar.png",
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Introduction_1.png'),
                fit: BoxFit.fill)),
        child: Column(children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Padding(
              //    alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
              child: Text(
                'WANDERLUST',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              )),
          SizedBox(
            height: 100,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 190, 0),
              child: Text(
                'XIN CHÀO!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 200),
              child: Text(
                "Chúng tôi luôn đồng hành cùng bạn trên mọi hành trình ^-^",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 22),
              )),
          Positioned(
              child: Image.asset(
            "assets/images/wanderlust_logo.png",
            width: size.width * 0.35,
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: clickSkip,
                  child: Text('Skip',
                      style: TextStyle(color: Colors.white, fontSize: 16))),
              TextButton(
                  onPressed: clickNext,
                  child: Text('Next',
                      style: TextStyle(color: Colors.white, fontSize: 16)))
            ],
          ),
        ]),
      ),
    );
  }

  void clickSkip() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => login_register()));
  }

  void clickNext() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => introduction2()));
  }
}
