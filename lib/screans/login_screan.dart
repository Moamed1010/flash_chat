import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget.dart';

class login_screan extends StatefulWidget {
  static String ID = 'login_screan';

  @override
  State<login_screan> createState() => _login_screanState();
}

class _login_screanState extends State<login_screan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            hero(),
            txtenmation(),
            SizedBox(
              height: 30,
            ),
            txtfield(txt: 'Enter your email'),
            SizedBox(
              height: 25,
            ),
            txtfield(txt: 'Enter your password'),
            SizedBox(
              height: 20,
            ),
            roundbutton(
              onpressed: () {},
              txt: 'Log in',
            ),
          ],
        ),
      ),
    );
  }
}
