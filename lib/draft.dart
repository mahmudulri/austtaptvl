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
              "Messages ",
              style: TextStyle(
                color: Color(0xff0FA958),
              ),
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xffE5E5E5),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TabBar(
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 4.0),
                        insets: EdgeInsets.symmetric(horizontal: 20)),

                    indicatorColor: Color(0xff0FA958),
                    // indicator: BoxDecoration(
                    //   color: Colors.green[300],
                    //   // borderRadius: BorderRadius.circular(25.0),
                    // ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Color(0xff4F4F4F),
                    tabs: [
                      Tab(
                        text: 'Inbox',
                      ),
                      Tab(
                        text: 'Sent items',
                      ),
                      Tab(
                        text: 'Important',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (_, index) {
                          return Card(
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              color: Colors.green,
                              child: Text("Rezaul Karim"),
                            ),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Text("Sent items"),
                    ),
                    Center(
                      child: Text('Important'),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
