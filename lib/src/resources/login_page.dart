import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/register_page.dart';
import 'change_pass1.dart';

class LoginPage extends StatefulWidget{
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
    return Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Register_1.png'),
                    fit: BoxFit.fill
                )
            ),
            child: SingleChildScrollView( // thay doi theo thiet bi
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // new Image.asset("assets/images/Register_1.png"),
                      SizedBox(
                        height: 120,
                      ),

                      // Padding(
                      //   padding: const EdgeInsets.all(30),
                      //   child: Container(
                      //     width: 90,
                      //     height: 70,
                      //     padding: EdgeInsets.all(15),
                      //     decoration: BoxDecoration(
                      //         shape: BoxShape.circle,
                      //         color: Colors.teal
                      //     ),
                      //     child: FlutterLogo(),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 40, 30, 6),
                        child: Text("Welcome to WANDERLUST !", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white, fontSize: 30
                        ),),

                      ),
                      Text(
                        "Ứng dụng hỗ trợ phượt thủ của người Việt",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white, fontSize: 20
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 40, 35, 6),
                        child:
                        TextField(
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          controller: _userController,
                          decoration: InputDecoration(
                              labelText: "USERNAME",
                              prefixIcon: Container(
                                width: 50, child: new Icon(Icons.email, color: Colors.white,),  //width co dinh icon
                              ) ,
                              border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.black, width:  1),
                                  borderRadius: BorderRadius.all(Radius.circular(30))),
                              labelStyle: TextStyle(
                                  color: Color(0xff888888), fontSize: 18)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          //show nam o giua va cuoi
                          children: <Widget>[
                            TextField(
                              style: TextStyle(color: Colors.black, fontSize: 18),
                              controller: _passController,
                              obscureText: !_showPass,
                              decoration: InputDecoration(
                                  labelText: "PASSWORD",
                                  prefixIcon: Container(
                                    width: 50, child: new Icon(Icons.lock, color: Colors.white),
                                  ),
                                  // suffixIcon: Icon(
                                  //   Icons.visibility, color: Colors.white,
                                  // ),
                                  border: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.black, width:  1),
                                      borderRadius: BorderRadius.all(Radius.circular(30))),
                                  errorText: _passInvalid ? _passErr : null,
                                  labelStyle: TextStyle(
                                      color: Color(0xff888888), fontSize: 18)),),
                            GestureDetector( //handle action
                                onTap: onShowPass,
                                child: Text(
                                  _showPass ? "HIDE" : "SHOW",
                                  style: TextStyle(color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),)
                            )
                          ],
                        ),
                      ),

                      Container(
                        constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                        alignment: AlignmentDirectional.centerEnd,  //le phai
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 3, 0),
                          child:  SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: TextButton(
                              onPressed: onForgerPassClick,
                              child: Text("Forget password",
                                style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w100),
                              ),
                              ),
                            ),
                          ),
                      ),
                      // Container(
                      //   constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                      //   alignment: AlignmentDirectional.centerEnd,  //le phai
                      //   child: Padding(
                      //     padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      //     child: Text(
                      //       "Forgot password",
                      //       style: TextStyle(fontSize: 16, color: Colors.blue),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 40),
                        child: SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: RaisedButton(
                            child: Text("Log In",
                              style: TextStyle(color: Colors.teal, fontSize: 18),
                            ),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular((30))),
                            ), onPressed: () {  },
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
                        child: RichText(
                          text: TextSpan(
                              text: "New user? ",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = (){
                                      Navigator.push(context,
                                          MaterialPageRoute(
                                              builder: (context) => RegisterPage()));
                                    },
                                  text: "Sign up for a new account",
                                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                )
                              ]
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      //   child: SizedBox(
                      //     width: double.infinity,
                      //     height: 56,
                      //     child: RaisedButton(
                      //       color: Colors.blue,
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.all(Radius.circular(8.0),)
                      //       ), //border
                      //       onPressed: onSignInClick,
                      //       child: Text("SIGN IN",
                      //         style: TextStyle(color: Colors.white, fontSize: 16),),
                      //     ),
                      //   ),
                      // ),
                    ]
                )

            )
        )
    );
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
      }
      else {
        _userInvalid = false;
      }
      if (_passController.text.length < 6) {
        _passInvalid = true;
      }
      else {
        _passInvalid = false;
      }

      // if (!(_userInvalid && _passInvalid)) {
      //   // Navigator.push(context, MaterialPageRoute(builder: gotoHome))//chuyen man hinh
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => HomePage()));
      // }
    });
  }
  void onForgerPassClick(){
    setState((){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => changePassPage()));
    }
    );
  }
}