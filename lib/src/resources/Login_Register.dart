import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/register_page.dart';

import 'login_page.dart';

class login_register extends StatefulWidget {
  @override
  _login_registerState createState() => new _login_registerState();
}

class _login_registerState extends State<login_register> {
  @override
  Widget build(BuildContext context) {
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
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Register_1.png"),
                fit: BoxFit.fill)),
        child: Column(children: <Widget>[
          SizedBox(
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
            child: Text(
              "BẮT ĐẦU THÔI!",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: SizedBox(
              width: double.infinity,
              height: 52,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.white, width: 2)),
                onPressed: onSiginClick,
                elevation: 0,
                color: Colors.transparent,
                textColor: Colors.white,
                child: Text("ĐĂNG NHẬP", style: TextStyle(fontSize: 25)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: SizedBox(
              width: double.infinity,
              height: 52,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.white, width: 2)),
                onPressed: onRegisterlick,
                elevation: 0,
                color: Colors.transparent,
                textColor: Colors.white,
                child: Text("ĐĂNG KÝ", style: TextStyle(fontSize: 25)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 170, 6),
            child: Text(
              "Điều khoản sử dụng",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 6),
            child: Text(
              "Nhấn vào Đăng nhập hoặc Đăng ký là bạn đã đọc và đồng ý với Điều khoản & Tiêu Chuẩn Cộng Đồng của chúng tôi",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
        ]),
      ),
    );
  }

  void onSiginClick() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void onRegisterlick() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }
}
