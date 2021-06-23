import 'package:flutter/material.dart';
import 'package:wanderlust_1/src/resources/trip.dart';

Widget MyTrip(TripData trip) {
  return Container(
    width: 352.7,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Color(0xFF464646),
              size: 35,
            ),
            SizedBox(width: 10),
            Text(trip.name,
                style: TextStyle(
                    color: Color(0xFF464646),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 10),
        Stack(children: <Widget>[
          Container(
            width: 352.7,
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage(trip.cover), fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(height: 60),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                    child: Text(trip.decription,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900)),
                  ),
                  Container(
                    child: Text(trip.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                  Container(
                    child: Text(trip.date,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  ),
                ]),
          ),
        ]),
        SizedBox(height: 10),
        Row(
          children: [
            addfriend(),
            SizedBox(width: 15),
            addfriend(),
            SizedBox(width: 15),
            addfriend(),
            SizedBox(width: 15),
            addfriend(),
            SizedBox(width: 15),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.teal,
              ),
              child: Icon(
                Icons.add,
                size: 35,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

class addfriend extends StatelessWidget {
  const addfriend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
    );
  }
}
