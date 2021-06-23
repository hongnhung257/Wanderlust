import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/Login_Register.dart';
import 'package:wanderlust_1/src/resources/chat_detail.dart';
import 'package:wanderlust_1/src/resources/editprofile.dart';
import 'package:wanderlust_1/src/resources/home.dart';
import 'package:wanderlust_1/src/resources/introduction_page1.dart';
import 'package:wanderlust_1/src/resources/login_page.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/nav.dart';
import 'package:wanderlust_1/src/resources/profile_page.dart';
import 'package:wanderlust_1/src/resources/register_page.dart';
import 'package:wanderlust_1/src/resources/tips.dart';
import 'package:wanderlust_1/src/resources/trip_page.dart';
import 'package:wanderlust_1/src/resources/infoprofile.dart';
import 'package:wanderlust_1/src/resources/post.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Nav(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:wanderlust_1/src/resources/register_page.dart';
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: RegisterPage(),
//     );
//   }
// }