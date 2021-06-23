import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/change_pass1.dart';
import 'package:wanderlust_1/src/resources/register_page.dart';
import 'login_page.dart';

class changePassword extends StatefulWidget {
  @override
  _changePasswordState createState() => new _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
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
                  "Đổi mật khẩu mới",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
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
                          labelText: "Mật khẩu mới",
                          prefixIcon: Container(
                            width: 50,
                            child: new Icon(
                              Icons.vpn_key,
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
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Theme(
                    data: new ThemeData(
                      primaryColor: Colors.white,
                      primaryColorDark: Colors.white,
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                          labelText: "Xác nhận mật khẩu mới",
                          prefixIcon: Container(
                            width: 50,
                            child: new Icon(
                              Icons.vpn_key,
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
                    onPressed: Click,
                    child: Text(
                      "Đổi mật khẩu",
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
            ]))));
  }

  void Click() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }
}
