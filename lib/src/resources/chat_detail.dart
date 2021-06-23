import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/data.dart';
import 'package:wanderlust_1/src/resources/chat_page.dart';

class ChatdetailPage extends StatefulWidget {
  @override
  _ChatdetailPageState createState() => _ChatdetailPageState();
}

class _ChatdetailPageState extends State<ChatdetailPage> {
  TextEditingController _sendMessageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.4),
        elevation: 0.0,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.teal,
            )),
        title: Transform.translate(
          offset: Offset(-25, 0), //giảm khoảng cách giữa leading với title
          child: Row(
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/avt2.gif"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(children: [
                    Text(
                      "Ngo Anh Thu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.lightGreenAccent[400],
                          shape: BoxShape.circle),
                    ),
                  ]),
                  SizedBox(height: 5),
                  Text(
                    "Active now",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.black.withOpacity(0.4)),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.phone,
            color: Colors.teal,
            size: 35,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.video_camera_back_outlined,
            color: Colors.teal,
            size: 38,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: getBody(),
      bottomSheet: getBottomSheet(),
    );
  }

  Widget getBody() {
    return ListView(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
        children: <Widget>[
          SizedBox(height: 8),
          Column(
            children: List.generate(messages.length, (index) {
              return BubbleChat(
                  isMe: messages[index]["isMe"],
                  messageType: messages[index]["messageType"],
                  message: messages[index]["message"],
                  progileImg: messages[index]["profileImg"]);
            }),
          )
        ]);
  }

  Widget getBottomSheet() {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 5.0, right: 5, bottom: 10, top: 10),
        child: Row(children: <Widget>[
          Container(
            width: (MediaQuery.of(context).size.width - 120) / 2,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.add_circle,
                  color: Colors.teal,
                  size: 38,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.teal,
                  size: 38,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.photo,
                  color: Colors.teal,
                  size: 38,
                ),
              ],
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width - 147),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)),
                  width: (MediaQuery.of(context).size.width - 0) / 2,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Aa",
                        suffixIcon: Icon(
                          Icons.face,
                          color: Colors.teal,
                          size: 35,
                        ),
                      ),
                      controller: _sendMessageController,
                    ),
                  ),
                ),
                Icon(
                  Icons.thumb_up,
                  color: Colors.teal,
                  size: 38,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class BubbleChat extends StatelessWidget {
  final bool isMe;
  final String progileImg;
  final String message;
  final int messageType;
  const BubbleChat(
      {Key? key,
      required this.isMe,
      required this.progileImg,
      required this.message,
      required this.messageType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: Row(
          children: <Widget>[
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(progileImg), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: getBorderMesageType(messageType),
                color: Colors.grey[400],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: getBorderMesageType(messageType),
                color: Colors.teal,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  getBorderMesageType(messengeType) {
    if (isMe) {
      if (messageType == 1) {
        return BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(5),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20));
      } else if (messageType == 2) {
        return BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20));
      } else if (messageType == 3) {
        return BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20));
      }
    } else {
      if (messageType == 1) {
        return BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(5));
      } else if (messageType == 2) {
        return BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(20));
      } else if (messageType == 3) {
        return BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5));
      }
    }
  }
}
