import 'package:austtaptvl/const/colors.dart';
import 'package:austtaptvl/const/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoticeDetails extends StatelessWidget {
  const NoticeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'News',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xff0FA958),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 2,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Divider(
                  color: AppColors.defaultcolor,
                  thickness: 2,
                ),
                SizedBox(
                  height: screenHeigth * 0.015,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "World textile fair comming soon".toUpperCase(),
                          style: GoogleFonts.poppins(
                            fontSize: screenHeigth * 0.017,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                        Text(
                          "Friday, January 17, 2020",
                          style: GoogleFonts.poppins(
                            fontSize: screenHeigth * 0.016,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeigth * 0.020,
                ),
                Row(
                  children: [
                    Container(
                      height: screenHeigth * 0.050,
                      width: screenWidth * 0.250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEFEFEF),
                      ),
                      child: Center(
                        child: Text(
                          "Textile",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: screenHeigth * 0.018,
                              color: Color(0xff4F4F4F),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.020,
                    ),
                    Container(
                      height: screenHeigth * 0.050,
                      width: screenWidth * 0.250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEFEFEF),
                      ),
                      child: Center(
                        child: Text(
                          "Fair",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: screenHeigth * 0.018,
                              color: Color(0xff4F4F4F),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeigth * 0.020,
                ),

                Container(
                  height: screenHeigth * 0.250,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/images/noticedetails.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(
                  height: screenHeigth * 0.030,
                ),
                /////////////////Long text.............../ Long Text ...............
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    mylongtext,
                    style: GoogleFonts.poppins(
                      fontSize: screenHeigth * 0.017,
                      color: Color(0xff828282),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
