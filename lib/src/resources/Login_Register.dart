import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/register_page.dart';

import 'login_page.dart';
class login_register extends StatefulWidget{
  @override
  _login_registerState createState() => new _login_registerState();
}

class _login_registerState extends State<login_register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Register_1.png"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 140,
              ),
              Text(
                "BẮT ĐẦU THÔI!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Padding(
               padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.red)),
                    onPressed: onSiginClick,
                    color: Colors.white,
                    textColor: Colors.teal,
                    child: Text("Đăng nhập",
                        style: TextStyle(fontSize: 25)),
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
                        side: BorderSide(color: Colors.red)),
                    onPressed: onRegisterlick,
                    color: Colors.white,
                    textColor: Colors.teal,
                    child: Text("Đăng Ký",
                        style: TextStyle(fontSize: 25)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40,280, 6),
                child: Text("Điều khoản sử dung", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white, fontSize: 20
                ),),

              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10,20, 6),
                child:   Text(
                  "Nhấn vào Đăng nhập hoặc Đăng ký là bạn đã đọc và đồng ý với Điều khoản & Tiêu Chuẩn Cộng Đồng của chúng tôi",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white, fontSize: 15
                  ),
                ),

              ),


            ]
        ),
      ),
    );
  }
  void onSiginClick() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }

    void onRegisterlick(){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RegisterPage()));
    }

}