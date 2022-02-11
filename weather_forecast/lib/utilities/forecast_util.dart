import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Util {
  static String getFormattedDate(DateTime dateTime) {
    return DateFormat('EEE, MMM, d, y').format(dateTime);
  }

  static getItem(IconData iconData, int value, String units) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.black,
          size: 28,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$value',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$units',
          style: TextStyle(fontSize: 15, color: Colors.black),
        )
      ],
    );
  }
}