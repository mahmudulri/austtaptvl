import 'package:austtaptvl/const/colors.dart';
import 'package:austtaptvl/ui/pages/auth/login_page.dart';
import 'package:austtaptvl/ui/pages/auth/register_fields_box/pageone.dart';
import 'package:austtaptvl/ui/pages/auth/register_fields_box/pagethree.dart';
import 'package:austtaptvl/ui/pages/auth/register_fields_box/pagetwo.dart';
import 'package:austtaptvl/ui/widgets/custom_textfield.dart';
import 'package:austtaptvl/ui/widgets/loginbutton.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  PageController controller = PageController();

  int number = 0;

  List pagelist = [
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

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
                  height: screenHeigth * 0.070,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.770,
                      child: Row(
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenHeigth * 0.025,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 80,
                      width: screenWidth * 0.70,
                      // color: Colors.green,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Color(0xff3FBA79))),
                    height: screenHeigth * 0.600,
                    width: screenWidth - 20,
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeigth * 0.010,
                        ),
                        SizedBox(
                          width: screenWidth * 0.770,
                          child: Row(
                            children: [
                              Text(
                                "Register as a new Alumni",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenHeigth * 0.025,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeigth * 0.010,
                        ),
                        SizedBox(
                          width: screenWidth * 0.770,
                          child: Row(
                            children: [
                              Text(
                                "The",
                                style: TextStyle(
                                  fontSize: screenHeigth * 0.015,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.010,
                              ),
                              Text(
                                "RED",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: screenHeigth * 0.015,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.010,
                              ),
                              Text(
                                "fields must be filled out ",
                                style: TextStyle(
                                  fontSize: screenHeigth * 0.015,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Container(
                            child: pagelist[number],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (number == 0) {
                                        print("end");
                                      } else {
                                        number--;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (number == 2) {
                                        print("end");
                                      } else {
                                        number++;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeigth * 0.010,
                ),
                loginButton(screenHeigth, screenWidth, "Register"),
                SizedBox(
                  height: screenHeigth * 0.010,
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
                          Get.to(LoginPage());
                        },
                        child: Text(
                          " LOGIN",
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
