import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sound_in_talk/src/pages/sign/sign_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sound In Talk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignPage(),
    );
  }
}