import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:outlined_text/outlined_text.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0FA958),
        body: Stack(
          children: [
            Center(
              child: Lottie.asset("assets/files/splash.json"),
            ),
            Center(
              child: OutlinedText(
                text: Text('austtaa',
                    style: GoogleFonts.koHo(
                      color: Colors.white,
                      fontSize: screenHeigth * 0.040,
                      fontWeight: FontWeight.bold,
                    )),
                strokes: [
                  OutlinedTextStroke(
                      color: Color(0xff00602B), width: screenWidth * 0.020),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
