import 'package:austtaptvl/const/colors.dart';
import 'package:austtaptvl/const/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingDetails extends StatelessWidget {
  const UpcomingDetails({Key? key}) : super(key: key);

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
          'Upcomings',
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
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
                        "AUSTTAA Cricket fiesta 2020",
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
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/icons/ticket.png",
                            height: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "20",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4F4F4F),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "৳",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4F4F4F),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screenHeigth * 0.030,
              ),

              Container(
                height: screenHeigth * 0.250,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/details.png"),
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
              // venue & Note section.........................
              SizedBox(
                height: screenHeigth * 0.040,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                      // color: Colors.grey,
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Venue & Notes:",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.025,
                          color: Color(0xff777777),
                        ),
                      ),
                      SizedBox(
                        height: screenHeigth * 0.010,
                      ),
                      Text(
                        "1.    Ashiyan Medical College Hospital, 300 feet.",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.016,
                          color: Color(0xff777777),
                        ),
                      ),
                      Text(
                        "2.    May be participants will not be counted, will be considered as not going.",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.016,
                          color: Color(0xff777777),
                        ),
                      ),
                      Text(
                        "3.    Please send invitation to your batch mates.",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.016,
                          color: Color(0xff777777),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeigth * 0.060,
              ),
              Container(
                height: screenHeigth * 0.060,
                width: screenWidth - 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/icons/ticket.png",
                      height: 30,
                    ),
                    // Text("Buy event ticket"),
                    SizedBox(
                      width: screenWidth * 0.010,
                    ),
                    Text("Buy event ticket",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.016,
                        )),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                      indent: 8.0,
                      endIndent: 8.0,
                    ),
                    SizedBox(
                      width: screenWidth * 0.010,
                    ),
                    Text(
                      "20",
                      style: GoogleFonts.poppins(
                        fontSize: screenHeigth * 0.020,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.020,
                    ),
                    Text(
                      "৳",
                      style: GoogleFonts.poppins(
                        fontSize: screenHeigth * 0.020,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeigth * 0.015,
              ),
              Text(
                "Your payment secured with SSL payement gateway ",
                style: GoogleFonts.poppins(
                  fontSize: screenHeigth * 0.015,
                  color: Color(0xff828282),
                ),
              ),
              SizedBox(
                height: screenHeigth * 0.100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
