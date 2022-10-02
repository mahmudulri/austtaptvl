import 'package:austtaptvl/ui/pages/auth/register_page.dart';
import 'package:austtaptvl/ui/widgets/custom_textfield.dart';
import 'package:austtaptvl/ui/widgets/loginbutton.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: [
            SvgPicture.asset(
              "assets/images/screen.svg",
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 80,
                  width: screenWidth * 0.70,
                  // color: Colors.green,
                  child: Image.asset("assets/images/logo.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Login to continue",
                      style: TextStyle(
                        fontSize: screenHeigth * .030,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                custom_textfield(
                    screenHeigth,
                    screenWidth,
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                    "User id or email"),
                SizedBox(
                  height: 15,
                ),
                custom_textfield(
                    screenHeigth,
                    screenWidth,
                    Icon(
                      Icons.password,
                      color: Colors.white,
                      size: 30,
                    ),
                    "Password"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot your id or password ?",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          print("Clicked forgot pass");
                        },
                        child: Text(
                          "RESET NOW",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                loginButton(screenHeigth, screenWidth, "Log in"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont' have account?",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(RegisterPage());
                        },
                        child: Text(
                          " REGISTER",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
