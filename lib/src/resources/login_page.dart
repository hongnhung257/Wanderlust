import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/register_page.dart';
import 'change_pass1.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  // LoginBloc  bloc = new LoginBloc();
  bool _showPass = false;
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  var _userNameErr = "Tài khoản không hợp lệ";
  var _passErr = "Mật khẩu phải trên 6 ký tự";
  var _userInvalid = false;
  var _passInvalid = false;

  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Register_1.png'),
                  fit: BoxFit.fill))),
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
          body: SingleChildScrollView(
              // thay doi theo thiet bi
              child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                // new Image.asset("assets/images/Register_1.png"),
                SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 6),
                  child: Text(
                    "Welcome to WANDERLUST !",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 23),
                  ),
                ),
                Text(
                  "Ứng dụng hỗ trợ phượt thủ của người Việt",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 20),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Container(
                      height: 40,
                      child: Image(
                        image: AssetImage('assets/images/vietnamflag.png'),
                        fit: BoxFit.cover,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(35, 20, 35, 6),
                    child: Theme(
                        data: new ThemeData(
                          primaryColor: Colors.white,
                          primaryColorDark: Colors.white,
                        ),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18), //text nhập vào
                          controller: _userController,
                          decoration: InputDecoration(
                              labelText: "EMAIL",
                              prefixIcon: Container(
                                width: 50,
                                child: new Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ), //width co dinh icon
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              labelStyle: TextStyle(
                                  color: Color(0xffFFFFFF), fontSize: 18)),
                        ))),
                Padding(
                    padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
                    child: Theme(
                      data: new ThemeData(
                        primaryColor: Colors.white,
                        primaryColorDark: Colors.white,
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        //show nam o giua va cuoi
                        children: <Widget>[
                          TextField(
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            controller: _passController,
                            obscureText: !_showPass,
                            decoration: InputDecoration(
                                labelText: "MẬT KHẨU",
                                prefixIcon: Container(
                                  width: 50,
                                  child:
                                      new Icon(Icons.lock, color: Colors.white),
                                ),
                                // suffixIcon: Icon(
                                //   Icons.visibility, color: Colors.white,
                                // ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                errorText: _passInvalid ? _passErr : null,
                                labelStyle: TextStyle(
                                    color: Color(0xffFFFFFF), fontSize: 18)),
                          ),
                          GestureDetector(
                              //handle action
                              onTap: onShowPass,
                              child: Text(
                                _showPass ? "HIDE" : "SHOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 3, 0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                      onPressed: onForgerPassClick,
                      child: Text(
                        "Quên mật khẩu?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                //   alignment: AlignmentDirectional.centerEnd, //le phai
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                //     child: Text(
                //       "Forgot password",
                //       style: TextStyle(fontSize: 16, color: Colors.blue),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 40),
                  child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: RaisedButton(
                      child: Text(
                        "ĐĂNG NHẬP",
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular((30))),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
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
                                          builder: (context) =>
                                              RegisterPage()));
                                },
                              text: "ĐĂNG KÝ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ))
              ])))
    ]);
  }

  void onShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onSignInClick() {
    setState(() {
      if (_userController.text.length < 6 ||
          !_userController.text.contains("@")) {
        _userInvalid = true;
      } else {
        _userInvalid = false;
      }
      if (_passController.text.length < 6) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }

      // if (!(_userInvalid && _passInvalid)) {
      //   // Navigator.push(context, MaterialPageRoute(builder: gotoHome))//chuyen man hinh
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => HomePage()));
      // }
    });
  }

  void onForgerPassClick() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => changePassPage()));
    });
  }
}
