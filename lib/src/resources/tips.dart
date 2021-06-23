import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'meo1.dart';


class Tips_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.teal,
              size: 30,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'MẸO VẶT',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
              ])),
      backgroundColor: Colors.teal,
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => meo1()));
                },
                splashColor: Colors.teal,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.home_repair_service_outlined,
                          size: 70.0, color: Colors.teal),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Vật dụng cần thiết",
                          style:
                              new TextStyle(fontSize: 18.0, color: Colors.teal))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.teal,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.help_center_outlined,
                        size: 70.0,
                        color: Colors.yellow,
                      ),
                      Text("Cách sơ cứu khi đi du lịch",
                          style: new TextStyle(
                              fontSize: 17.0, color: Colors.black))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.teal,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.stacked_line_chart_outlined,
                        size: 70.0,
                        color: Colors.purpleAccent,
                      ),
                      Text("Ngăn độc rắn cắn",
                          style: new TextStyle(
                              fontSize: 17.0, color: Colors.black))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.teal,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.tablet_sharp,
                        size: 70.0,
                        color: Colors.red,
                      ),
                      Text("Sơ cứu cầm máu vết thương",
                          style: new TextStyle(
                              fontSize: 17.0, color: Colors.black))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.teal,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.favorite_outline,
                        size: 70.0,
                        color: Colors.red,
                      ),
                      Text("Sơ cứu say nắng, ngất xỉu",
                          style: new TextStyle(
                              fontSize: 17.0, color: Colors.black))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.teal,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.wb_incandescent,
                        size: 70.0,
                        color: Colors.green,
                      ),
                      Text("Cố định gãy tay chân",
                          style: new TextStyle(
                              fontSize: 17.0, color: Colors.black))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
