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
          child: Container(
            height: 200.0,
            width: 200.0,
            decoration: const BoxDecoration(
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 5  horizontally
                    0.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: Center(child: const Text("Hello world")),
          ),
        ),
      ),
    );
  }
}
