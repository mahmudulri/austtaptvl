import 'package:flutter/material.dart';
// import 'Chat.dart';

class DraftPage extends StatefulWidget {
  const DraftPage({Key? key}) : super(key: key);

  @override
  _DraftPageState createState() => _DraftPageState();
}

class _DraftPageState extends State<DraftPage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Draft ",
            style: TextStyle(
              color: Color(0xff0FA958),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              mybox(screenHeigth: screenHeigth, screenWidth: screenWidth),
              SizedBox(
                height: 10,
              ),
              mybox(screenHeigth: screenHeigth, screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}

class mybox extends StatelessWidget {
  const mybox({
    Key? key,
    required this.screenHeigth,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeigth;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeigth * 0.150,
      width: screenWidth - 50,
      decoration: const BoxDecoration(
        color: Color(0xFFffffff),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 5  horizontally
              0.0, // Move to bottom 5 Vertically
            ),
          ),
        ],
      ),
      // child: Center(child: const Text("Hello world")),
    );
  }
}
