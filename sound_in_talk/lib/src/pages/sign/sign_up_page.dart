import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sound_in_talk/src/pages/sign/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value?.trim().isEmpty ?? false) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Your Name'),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  validator: (value) {
                    if (value?.trim().isEmpty ?? false) {
                      return 'Please enter your Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  validator: (value) {
                    if (value?.trim().isEmpty ?? false) {
                      return 'Please enter an password';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                  keyboardType: TextInputType.visiblePassword,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        print('df');
                        Get.to(SignInPage());
                      }
                    },
                    child: Text('비번'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
