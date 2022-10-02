import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: screenHeigth * 0.020,
          ),
          page_one_textfield(
            screenHeigth,
            screenWidth,
            Icon(
              Icons.password,
              color: Colors.white,
              size: 30,
            ),
            "Password",
          ),
          SizedBox(
            height: screenHeigth * 0.010,
          ),
          page_one_textfield(
            screenHeigth,
            screenWidth,
            Icon(
              Icons.password,
              color: Colors.white,
              size: 30,
            ),
            "Password",
          ),
          SizedBox(
            height: screenHeigth * 0.010,
          ),
          page_one_textfield(
            screenHeigth,
            screenWidth,
            Icon(
              Icons.password,
              color: Colors.white,
              size: 30,
            ),
            "Password",
          ),
          SizedBox(
            height: screenHeigth * 0.010,
          ),
          page_one_textfield(
            screenHeigth,
            screenWidth,
            Icon(
              Icons.password,
              color: Colors.white,
              size: 30,
            ),
            "Password",
          ),
          SizedBox(
            height: screenHeigth * 0.010,
          ),
          page_one_textfield(
            screenHeigth,
            screenWidth,
            Icon(
              Icons.password,
              color: Colors.white,
              size: 30,
            ),
            "Password",
          ),
          SizedBox(
            height: screenHeigth * 0.010,
          ),
          page_one_textfield(
            screenHeigth,
            screenWidth,
            Icon(
              Icons.password,
              color: Colors.white,
              size: 30,
            ),
            "Password",
          ),
          SizedBox(
            height: screenHeigth * 0.010,
          ),
          page_one_textfield(
            screenHeigth,
            screenWidth,
            Icon(
              Icons.password,
              color: Colors.white,
              size: 30,
            ),
            "Password",
          ),
          SizedBox(
            height: screenHeigth * 0.010,
          ),
          page_one_textfield(
            screenHeigth,
            screenWidth,
            Icon(
              Icons.password,
              color: Colors.white,
              size: 30,
            ),
            "Password",
          ),
        ],
      ),
    );
  }
}

page_one_textfield(
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
        height: screenHeigth * 0.060,
        width: screenWidth * 0.170,
        // width: 70,
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
        height: screenHeigth * 0.060,
        width: screenWidth * 0.60,
        // width: 600,
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
