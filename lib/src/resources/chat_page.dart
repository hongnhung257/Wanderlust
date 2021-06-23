import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/data.dart';
import 'package:wanderlust_1/src/resources/chat_detail.dart';

class messengeApp extends StatefulWidget {
  @override
  _messengeAppState createState() => _messengeAppState();
}

class _messengeAppState extends State<messengeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
        child: ListView(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            children: <Widget>[
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/avatar.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20.0,
                width: 10,
              ),
              Expanded(
                  child: Text("Chat",
                      style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 2,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold))),
              MaterialButton(
                  onPressed: () {},
                  elevation: 0.0,
                  padding: EdgeInsets.all(9.0),
                  color: Colors.grey[200],
                  shape: CircleBorder(),
                  child: Icon(Icons.edit, color: Colors.teal))
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 40,
            child: TextField(
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: "Tìm kiếm",
                  contentPadding: EdgeInsets.only(left: 34.0),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 68,
                          height: 68,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                          ),
                          child: Icon(Icons.add, size: 35),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Your story")
                      ],
                    )),
                Row(
                    children: List.generate(userStories.length, (index) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              width: 72,
                              height: 72,
                              child: Stack(
                                children: <Widget>[
                                  userStories[index]['story']
                                      ? Container(
                                          width: 72,
                                          height: 72,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                width: 3,
                                                color: Colors.teal,
                                              )),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Container(
                                              width: 68,
                                              height: 68,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        userStories[index]
                                                            ['img']),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                          ))
                                      : Container(
                                          width: 68,
                                          height: 68,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    userStories[index]['img']),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                  userStories[index]['online']
                                      ? Positioned(
                                          left: 55,
                                          bottom: 8,
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors
                                                    .lightGreenAccent[400],
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    width: 3,
                                                    color: Colors.white)),
                                          ))
                                      : Container()
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(userStories[index]['name'])
                        ],
                      ));
                })),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: List.generate(userMessages.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatdetailPage()));
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 72,
                          height: 72,
                          child: Stack(
                            children: <Widget>[
                              userMessages[index]['story']
                                  ? Container(
                                      width: 72,
                                      height: 72,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 3,
                                            color: Colors.teal,
                                          )),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Container(
                                          width: 68,
                                          height: 68,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    userMessages[index]['img']),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ))
                                  : Container(
                                      width: 68,
                                      height: 68,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                userMessages[index]['img']),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                              userMessages[index]['online']
                                  ? Positioned(
                                      left: 55,
                                      bottom: 8,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: Colors.lightGreenAccent[400],
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 3, color: Colors.white)),
                                      ))
                                  : Container()
                            ],
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(userMessages[index]['name'],
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 140,
                            child: Text(
                              userMessages[index]['message'] +
                                  "  " +
                                  userMessages[index]['created_at'],
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          )
        ]));
  }
}
