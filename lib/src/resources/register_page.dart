import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _showPass = false;
  bool _showPass1 = false;
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _passController_1 = new TextEditingController();
  var _nameErr = "Bạn chưa nhập Họ tên";
  var _userNameErr = "Email không hợp lệ";
  var _passErr = "Mật khẩu phải trên 6 ký tự";
  var _passErr_1 = "Mật khẩu đã nhập không khớp";
  var _nameInvalid = false;
  var _userInvalid = false;
  var _passInvalid = false;
  var _passInvalid_1 = false;
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Register_1.png'),
                  fit: BoxFit.cover)),
        ),
        Scaffold(
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
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: new TextButton(
                      child: Text('ĐĂNG KÝ',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.bold)),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal)),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 520,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Bạn là người mới ?',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hãy điền vào những ô trống bên dưới và tham gia thôi!",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.teal,
                                fontSize: 16),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(30, 15, 30, 6),
                              child: Theme(
                                data: new ThemeData(
                                  primaryColor: Colors.teal,
                                  primaryColorDark: Colors.teal,
                                ),
                                child: TextField(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                  controller: _nameController,
                                  decoration: InputDecoration(
                                      labelText: "Họ tên",
                                      errorText: _nameInvalid ? _nameErr : null,
                                      prefixIcon: Container(
                                        width: 50,
                                        child: new Icon(
                                          Icons.person,
                                          color: Colors.grey,
                                        ), //width co dinh icon
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      labelStyle: TextStyle(
                                          color: Color(0xff888888),
                                          fontSize: 18)),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Theme(
                                  data: new ThemeData(
                                    primaryColor: Colors.teal,
                                    primaryColorDark: Colors.teal,
                                  ),
                                  child: TextField(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                    controller: _userController,
                                    decoration: InputDecoration(
                                        labelText: "Email",
                                        errorText:
                                            _userInvalid ? _userNameErr : null,
                                        prefixIcon: Container(
                                          width: 50,
                                          child: new Icon(
                                            Icons.email,
                                            color: Colors.grey,
                                          ), //width co dinh icon
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        labelStyle: TextStyle(
                                            color: Color(0xff888888),
                                            fontSize: 18)),
                                  ))),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Theme(
                                  data: new ThemeData(
                                    primaryColor: Colors.teal,
                                    primaryColorDark: Colors.teal,
                                  ),
                                  child: Stack(
                                      alignment: AlignmentDirectional.centerEnd,
                                      //show nam o giua va cuoi
                                      children: <Widget>[
                                        TextField(
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                          controller: _passController,
                                          obscureText: !_showPass,
                                          decoration: InputDecoration(
                                              labelText: "Mật khẩu",
                                              errorText: _passInvalid
                                                  ? _passErr
                                                  : null,
                                              prefixIcon: Container(
                                                width: 50,
                                                child: new Icon(
                                                  Icons.vpn_key,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              //  errorText: _passInvalid ? _passErr : null,
                                              labelStyle: TextStyle(
                                                  color: Color(0xff888888),
                                                  fontSize: 18)),
                                        ),
                                        GestureDetector(
                                            //handle action
                                            onTap: onShowPass,
                                            child: _showPass
                                                ? Icon(
                                                    Icons.remove_red_eye,
                                                    color: Colors.grey,
                                                    size: 28,
                                                  )
                                                : Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.grey,
                                                    size: 28,
                                                  )),
                                      ]))),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Theme(
                                data: new ThemeData(
                                  primaryColor: Colors.teal,
                                  primaryColorDark: Colors.teal,
                                ),
                                child: Stack(
                                  alignment: AlignmentDirectional.centerEnd,
                                  //show nam o giua va cuoi
                                  children: <Widget>[
                                    TextField(
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                      controller: _passController_1,
                                      obscureText: !_showPass1,
                                      decoration: InputDecoration(
                                          labelText: "Nhập lại mật khẩu",
                                          errorText: _passInvalid_1
                                              ? _passErr_1
                                              : null,
                                          prefixIcon: Container(
                                            width: 50,
                                            child: new Icon(
                                              Icons.vpn_key_sharp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          labelStyle: TextStyle(
                                              color: Color(0xff888888),
                                              fontSize: 18)),
                                    ),
                                    GestureDetector(
                                        //handle action
                                        onTap: onShowPass1,
                                        child: _showPass1
                                            ? Icon(
                                                Icons.remove_red_eye,
                                                color: Colors.grey,
                                                size: 28,
                                              )
                                            : Icon(
                                                Icons.remove_red_eye_rounded,
                                                color: Colors.grey,
                                                size: 28,
                                              )),
                                  ],
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 52,
                              child: RaisedButton(
                                onPressed: onClick,
                                child: Text(
                                  "BẮT ĐẦU",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                color: Colors.teal,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular((30))),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: RichText(
                              text: TextSpan(
                                  text: "Bạn đã có tài khoản? ",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                  children: <TextSpan>[
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginPage()));
                                        },
                                      text: "ĐĂNG NHẬP",
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            )),
      ],
    );
  }

  void onShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onShowPass1() {
    setState(() {
      _showPass1 = !_showPass1;
    });
  }

  void onClick() {
    setState(() {
      if (!(_nameController.text.isEmpty)) {
        _nameInvalid = false;
      } else {
        _nameInvalid = true;
      }
      if (!_userController.text.contains("@")) {
        _userInvalid = true;
      } else {
        _userInvalid = false;
      }
      if (_passController.text.length < 6) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }

      if (_passController_1.text != _passController.text) {
        _passInvalid_1 = true;
      } else {
        _passInvalid_1 = false;
      }
      if (!_userInvalid && !_passInvalid && !_nameInvalid && !_passInvalid_1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
        print('Ho tên: ${_nameController.text}');
        print('Email: ${_userController.text}');
        print('Mật khẩu: ${_passController.text}');
      }
    });
  }
}
