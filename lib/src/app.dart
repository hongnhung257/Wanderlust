import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/Login_Register.dart';
import 'package:wanderlust_1/src/resources/introduction_page1.dart';
import 'package:wanderlust_1/src/resources/login_page.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/register_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_register(),
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