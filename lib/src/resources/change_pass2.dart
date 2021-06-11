import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/change_pass1.dart';
import 'package:wanderlust_1/src/resources/register_page.dart';

import 'change_pass3.dart';

class getCode extends StatefulWidget {
  @override
  _getCodeState createState() => new _getCodeState();
}

class _getCodeState extends State<getCode> {
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
                width: size.width * 0.8,
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                child: Text(
                  "Nhập mã xác nhận",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
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
                          labelText: "Mã xác nhận",
                          prefixIcon: Container(
                            width: 50,
                            child: new Icon(
                              Icons.contact_mail,
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
                      "Thay đổi mật khẩu",
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 20,
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
                      text: "Chưa nhận được mã xác nhận? ",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => changePassPage()));
                            },
                          text: "GỬI LẠI",
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
          context, MaterialPageRoute(builder: (context) => changePassword()));
    });
  }
}
