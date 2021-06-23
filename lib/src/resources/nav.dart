import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/home.dart';
import 'package:wanderlust_1/src/resources/mytrip.dart';
import 'package:wanderlust_1/src/resources/profile_page.dart';
import 'package:wanderlust_1/src/resources/login_page.dart';
import 'package:wanderlust_1/src/resources/trip_page.dart';

import 'chat_page.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    messengeApp(),
    LoginPage(),
    Profile_page()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.home),
      //   onPressed: (){},
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = Home();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: currentTab == 0 ? Colors.teal : Colors.grey,
                    ),
                    Text('Trang chủ',
                        style: TextStyle(
                            color: currentTab == 0 ? Colors.teal : Colors.grey))
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = TripPage();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_rounded,
                      color: currentTab == 1 ? Colors.teal : Colors.grey,
                    ),
                    Text('Hành trình',
                        style: TextStyle(
                            color: currentTab == 1 ? Colors.teal : Colors.grey))
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = messengeApp();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.people,
                      color: currentTab == 2 ? Colors.teal : Colors.grey,
                    ),
                    Text('Bạn bè',
                        style: TextStyle(
                            color: currentTab == 2 ? Colors.teal : Colors.grey))
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = Profile_page();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: currentTab == 3 ? Colors.teal : Colors.grey,
                    ),
                    Text('Trang Cá nhân',
                        style: TextStyle(
                            color: currentTab == 3 ? Colors.teal : Colors.grey))
                  ],
                ),
              )
            ],
            // ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     MaterialButton(
            //       minWidth: 40,
            //       onPressed: (){
            //         setState(() {
            //           currentScreen = LoginPage();
            //           currentTab = 2;
            //         }
            //         );
            //       },
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Icon(
            //             Icons.people, color: currentTab == 2 ? Colors.teal : Colors.grey,
            //           ),
            //           Text('Bạn bè', style: TextStyle(color: currentTab == 2 ? Colors.teal : Colors.grey ))
            //         ],
            //       ),
            //     ),
            //     MaterialButton(
            //       minWidth: 40,
            //       onPressed: (){
            //         setState(() {
            //           currentScreen = Profile_page();
            //           currentTab = 3;
            //         }
            //         );
            //       },
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Icon(
            //             Icons.person, color: currentTab == 3 ? Colors.teal : Colors.grey,
            //           ),
            //           Text('Trang Cá nhân', style: TextStyle(color: currentTab == 3 ? Colors.teal : Colors.grey ))
            //         ],
            //       ),
            //     )
            //   ],
            // ),
            // ],
          ),
        ),
      ),
    );
  }
}
