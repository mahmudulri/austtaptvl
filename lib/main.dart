import 'package:austtaptvl/draft.dart';
import 'package:austtaptvl/ui/pages/auth/login_page.dart';
import 'package:austtaptvl/ui/pages/auth/register_fields_box/pageone.dart';
import 'package:austtaptvl/ui/pages/auth/register_page.dart';
import 'package:austtaptvl/ui/pages/create_post_page.dart';
import 'package:austtaptvl/ui/pages/details_pages/job_details.dart';
import 'package:austtaptvl/ui/pages/details_pages/news_details.dart';
import 'package:austtaptvl/ui/pages/details_pages/notice_details.dart';
import 'package:austtaptvl/ui/pages/details_pages/upcoming_details.dart';
import 'package:austtaptvl/ui/pages/message/message_box.dart';
import 'package:austtaptvl/ui/pages/message/message_details.dart';
import 'package:austtaptvl/ui/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key})
      : super(
          key: key,
        );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DraftPage());
  }
}
