import 'package:flutter/material.dart';

Widget loginButton(double screenHeigth, double screenWidth, String buttonName) {
  return SizedBox(
    height: screenHeigth * 0.070,
    width: screenWidth * 0.78,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        primary: Color(0xff00602B),
      ),
      onPressed: () {},
      child: Text(
        buttonName,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
