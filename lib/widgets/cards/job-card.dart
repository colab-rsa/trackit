
import 'package:flutter/material.dart';

Widget JobCard(item) {
  return Column(
    children: <Widget>[
      SizedBox(
        height: 50,
      ),
      Container(
          height: 350,
          width: 220,
          decoration: new BoxDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Image.asset(item['poster'],
                fit: BoxFit.cover, width: 1000.0),
          )),
      SizedBox(
        height: 15,
      ),
      Text(
        item['title'],
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ],
  );
}