// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sound_in_talk/src/pages/sign_in_page.dart';
import 'package:sound_in_talk/src/pages/sign_up_page.dart';

class SignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.to(SignUpPage()),
              child: Text('Sign Up'),
            ),
            TextButton(
              onPressed: () => Get.to(SignInPage()),
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
