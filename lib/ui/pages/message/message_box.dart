import 'package:austtaptvl/const/colors.dart';
import 'package:austtaptvl/const/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Messages',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Color(0xff0FA958),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Divider(
                color: AppColors.defaultcolor,
                thickness: 1.03,
              ),
            ),
            Container(
              height: screenHeigth * 0.070,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Color(0xffE5E5E5),
                // borderRadius: BorderRadius.circular(25.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 4,
                      color: Color(0xFF0FA958),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 0),
                  ),
                  isScrollable: true,
                  labelColor: Colors.black,
                  tabs: [
                    Text("Inbox"),
                    Text("Sent items"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Importants"),
                        Icon(
                          Icons.star_border,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: screenHeigth * 0.010,
                        );
                      },
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return Container(
                          // height: screenHeigth * 0.150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffB7E5CD),
                                      ),
                                      height: screenHeigth * 0.150,
                                      width: screenWidth * 0.150,
                                      child: Icon(Icons.chat),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: screenWidth * 0.040,
                                ),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Flexible(
                                            child: Text(
                                              "Rezaul Karim",
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                              style: TextStyle(
                                                fontSize: screenHeigth * 0.020,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "13 sep 2022, 10.05 am",
                                            style: TextStyle(
                                              fontSize: screenHeigth * 0.015,
                                              color: Color(0xff777777),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flexible(
                                            child: Text(
                                              "Donation",
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                              style: TextStyle(
                                                fontSize: screenHeigth * 0.018,
                                                color: Color(0xff4F4F4F),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),

                                      // ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Flexible(
                                            child: Text(
                                              jobcontext,
                                              maxLines: 5,
                                              // overflow: TextOverflow.ellipsis,
                                              // softWrap: true,
                                              style: TextStyle(
                                                fontSize: screenHeigth * 0.015,
                                                color: Color(0xff828282),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.star_border,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
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
        ),
      ),
    );
  }
}
