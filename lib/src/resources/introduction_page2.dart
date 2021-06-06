import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Login_Register.dart';

class introduction2 extends StatefulWidget{
  @override
  _introduction2State createState() => new _introduction2State();
}

class _introduction2State extends State<introduction2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Introduction_2.png'),
                fit: BoxFit.fill)),
        child: Column(
            children: <Widget>[
              SizedBox(
                height: 140,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    'WANDERLUST',
                    style: TextStyle(fontSize:35, color: Colors.white, fontWeight: FontWeight.w900, height: 1.2
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(00, 50, 300, 0),
                  child: Text(
                    'KẾT NỐI!',
                    style: TextStyle(fontSize:30, color: Colors.white, fontWeight: FontWeight.w900,
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 50),
                  child: Text(
                    "mọi người lại với nhau thành một nhóm để hành trình thêm tuyệt vời",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white70, fontSize: 20
                    ),
                  )
              ),
              Positioned(
                  child: Image.asset("assets/images/wanderlust_logo.png",
                    width: size.width *0.5,)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: clickSkip,
                      child: Text('skip',
                          style: TextStyle(color: Colors.white, fontSize: 16))
                  ),
                  TextButton(
                      onPressed: clickNext,
                      child: Text('Next',
                          style: TextStyle(color: Colors.white, fontSize: 16))
                  )
                ],
              ),
            ]
        ),
      ),
    );
  }
  void clickSkip(){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => login_register()));
  }
  void clickNext(){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => login_register()));
  }
}