import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/register_page.dart';

import 'change_pass2.dart';

class changePassPage extends StatefulWidget {
  @override
  _changePassPageState createState() => new _changePassPageState();
}

class _changePassPageState extends State<changePassPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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
            color: Colors.teal,
            child: SingleChildScrollView(
                // thay doi theo thiet bi
                child: Column(children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Positioned(
                  child: Image.asset(
                "assets/images/wanderlust_logo.png",
                width: size.width * 0.4,
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
                child: Text(
                  "Hãy điền địa chỉ email của bạn",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
              Text(
                "Chúng tôi sẽ gửi cho bạn một mã phục hồi",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Theme(
                    data: new ThemeData(
                      primaryColor: Colors.white,
                      primaryColorDark: Colors.white,
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Container(
                            width: 50,
                            child: new Icon(
                              Icons.email,
                              color: Colors.white60,
                            ), //width co dinh icon
                          ),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: sendClick,
                    child: Text(
                      "Gửi",
                      style: TextStyle(
                          color: Colors.teal[700],
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular((30))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 40),
                child: RichText(
                  text: TextSpan(
                      text: "Bạn chưa có tài khoản? ",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                          text: "ĐĂNG KÝ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
              ),
            ]))));
  }

  void sendClick() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => getCode()));
    });
  }
}
