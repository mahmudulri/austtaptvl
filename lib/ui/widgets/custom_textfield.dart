import 'package:flutter/material.dart';

Widget custom_textfield(
    double screenHeigth, double screenWidth, Widget icon, String hinttxt) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Color(0xff00602B),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        height: screenHeigth * 0.070,
        width: 70,
        child: icon,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          border: Border.all(
            width: 1,
            color: Color(0xff00602B),
          ),
        ),
        height: screenHeigth * 0.070,
        width: screenWidth * 0.60,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: TextField(
                decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hinttxt,
            )),
          ),
        ),
      ),
    ],
  );
}
