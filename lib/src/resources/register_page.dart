import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _showPass = false;
  // TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _passController_1 = new TextEditingController();
  var _passErr = "Mật khẩu không đúng";
  var _passInvalid = false;
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   iconTheme: IconThemeData(color: Colors.transparent),
      //   elevation: 0,
      // ),
      body: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Register_1.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: new TextButton(
                    child: Text('ĐĂNG KÝ',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
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
                    height: 500,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      children:<Widget> [
                        Text(
                          'Bạn là người mới ?',
                          style: TextStyle(fontSize:20, color: Colors.teal,  fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Hãy điền vào những ô trống bên dưới và tham gia thôi ^-^",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.teal, fontSize: 19
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 15, 30, 6),
                          child:
                          TextField(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                                labelText: "Họ tên",
                                prefixIcon: Container(
                                  width: 50, child: new Icon(Icons.person, color: Colors.grey,),  //width co dinh icon
                                ) ,
                                border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.black, width:  1),
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                labelStyle: TextStyle(
                                    color: Color(0xff888888), fontSize: 18)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                          child:
                          TextField(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                                labelText: "Email",
                                prefixIcon: Container(
                                  width: 50, child: new Icon(Icons.email, color: Colors.grey,),  //width co dinh icon
                                ) ,
                                border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.black, width:  1),
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                labelStyle: TextStyle(
                                    color: Color(0xff888888), fontSize: 18)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                          child: Stack(
                            alignment: AlignmentDirectional.centerEnd,
                            //show nam o giua va cuoi
                            children: <Widget>[
                              TextField(
                                style: TextStyle(color: Colors.black, fontSize: 18),
                                controller: _passController,
                                obscureText: !_showPass,
                                decoration: InputDecoration(
                                    labelText: "PASSWORD ",
                                    prefixIcon: Container(
                                      width: 50, child: new Icon(Icons.vpn_key, color: Colors.grey,),
                                    ) ,
                                    border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.black, width:  1),
                                        borderRadius: BorderRadius.all(Radius.circular(10))),
                                    //  errorText: _passInvalid ? _passErr : null,
                                    labelStyle: TextStyle(
                                        color: Color(0xff888888), fontSize: 18)),),
                              GestureDetector( //handle action
                                  onTap: onShowPass,
                                  child: Text(
                                    _showPass ? "HIDE" : "SHOW",
                                    style: TextStyle(color: Colors.blue,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),)
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                          child: Stack(
                            alignment: AlignmentDirectional.centerEnd,
                            //show nam o giua va cuoi
                            children: <Widget>[
                              TextField(
                                style: TextStyle(color: Colors.black, fontSize: 18),
                                controller: _passController_1,
                                obscureText: !_showPass,
                                decoration: InputDecoration(
                                    labelText: "Confirm password",
                                    prefixIcon: Container(
                                      width: 50, child: new Icon(Icons.vpn_key_sharp, color: Colors.grey,),
                                    ) ,
                                    border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.black, width:  1),
                                        borderRadius: BorderRadius.all(Radius.circular(10))),
                                    errorText: _passInvalid ? _passErr : null,
                                    labelStyle: TextStyle(
                                        color: Color(0xff888888), fontSize: 18)),),
                              GestureDetector( //handle action
                                  onTap: onShowPass,
                                  child: Text(
                                    _showPass ? "HIDE" : "SHOW",
                                    style: TextStyle(color: Colors.blue,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),)
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                          child: SizedBox(
                            width: double.infinity,
                            height: 52,
                            child: RaisedButton(
                              onPressed: onSiginClick,
                              child: Text("SIGNUP",
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              color: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular((30))),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                          child: RichText(
                            text: TextSpan(
                                text: "Already have an account?",
                                style: TextStyle(color: Colors.grey, fontSize: 16),
                                children: <TextSpan>[
                                  TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = (){
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) => LoginPage()));
                                      },
                                    text: "Sign in",
                                    style: TextStyle(color: Colors.teal, fontSize: 16, fontWeight: FontWeight.bold),
                                  )
                                ]
                            ),
                          ),
                        ),


                      ],
                    ),
                  )),
            ],
          )),
    );
  }
  void onShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }
  void onSiginClick() {
    setState(() {
      if (_passController != _passController_1) {
        _passInvalid = true;
      }
      else {
        _passInvalid = false;
      }
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
    );}
}
/*class RegisterPage extends StatefulWidget{
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  bool _showPass = false;
 // TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _passController_1 = new TextEditingController();
  var _passErr = "Mật khẩu không đúng";
  var _passInvalid = false;
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   iconTheme: IconThemeData(color: Colors.white),
        //   elevation: 0,
        // ),
       body: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 120,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child:  FlatButton(
                    child: Text("S I N G U P",
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    color: Colors.teal,
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 6),
                child: Text("Bạn là người mới?", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal, fontSize: 20
                ),),

              ),
              Text(
                "Hãy điền vào những ô trống bên dưới và tham gia thôi ^-^",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.teal[700], fontSize: 20
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 6),
                child:
                TextField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Full name",
                      prefixIcon: Container(
                        width: 50, child: new Icon(Icons.person, color: Colors.grey,),  //width co dinh icon
                      ) ,
                      border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black, width:  1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelStyle: TextStyle(
                          color: Color(0xff888888), fontSize: 18)),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child:
                TextField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Container(
                        width: 50, child: new Icon(Icons.email, color: Colors.grey,),  //width co dinh icon
                      ) ,
                      border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black, width:  1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelStyle: TextStyle(
                          color: Color(0xff888888), fontSize: 18)),),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  //show nam o giua va cuoi
                  children: <Widget>[
                    TextField(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                     controller: _passController,
                      obscureText: !_showPass,
                      decoration: InputDecoration(
                          labelText: "PASSWORD ",
                          prefixIcon: Container(
                            width: 50, child: new Icon(Icons.vpn_key, color: Colors.grey,),
                          ) ,
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width:  1),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                        //  errorText: _passInvalid ? _passErr : null,
                          labelStyle: TextStyle(
                              color: Color(0xff888888), fontSize: 18)),),
                    GestureDetector( //handle action
                        onTap: onShowPass,
                        child: Text(
                          _showPass ? "HIDE" : "SHOW",
                          style: TextStyle(color: Colors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),)
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  //show nam o giua va cuoi
                  children: <Widget>[
                    TextField(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      controller: _passController_1,
                      obscureText: !_showPass,
                      decoration: InputDecoration(
                          labelText: "Confirm password",
                          prefixIcon: Container(
                            width: 50, child: new Icon(Icons.vpn_key_sharp, color: Colors.grey,),
                          ) ,
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width:  1),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                             errorText: _passInvalid ? _passErr : null,
                               labelStyle: TextStyle(
                              color: Color(0xff888888), fontSize: 18)),),
                    GestureDetector( //handle action
                        onTap: onShowPass,
                        child: Text(
                          _showPass ? "HIDE" : "SHOW",
                          style: TextStyle(color: Colors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),)
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: onSiginClick,
                    child: Text("SIGNUP",
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular((30))),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                child: RichText(
                  text: TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                          text: "Sign in",
                          style: TextStyle(color: Colors.teal, fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ]
                  ),
                ),
              ),

            ],
          )
        ),
      ),
    );

  }

    void onShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }
  void onSiginClick() {
    setState(() {
      if (_passController != _passController_1) {
        _passInvalid = true;
      }
      else {
        _passInvalid = false;
      }
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    }
}*/