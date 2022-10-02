import 'package:austtaptvl/ui/pages/auth/login_page.dart';
import 'package:austtaptvl/ui/pages/auth/register_fields_box/pageone.dart';
import 'package:austtaptvl/ui/pages/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RegisterPage());
  }
}
