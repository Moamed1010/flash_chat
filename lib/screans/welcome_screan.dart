import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/screans/login_screan.dart';
import 'package:flash_chat/screans/register_screan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget.dart';

class welcome_screan extends StatefulWidget {
  static String ID = 'welcome_screan';
  @override
  State<welcome_screan> createState() => _welcome_screanState();
}

class _welcome_screanState extends State<welcome_screan>
    with SingleTickerProviderStateMixin {
  var animationcontroler;

  @override
  void initState() {
    animationcontroler = AnimationController(
        vsync: this, // the SingleTickerProviderStateMixin
        duration: Duration(seconds: 5),
        upperBound: 1);
    animationcontroler.forward();
    animationcontroler.addListener(() {
      //print(animationcontroler.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                hero(),
                txtenmation(),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            roundbutton(
                txt: 'Log In',
                onpressed: () {
                  Navigator.pushNamed(context, login_screan.ID);
                }),
            SizedBox(
              height: 15,
            ),
            roundbutton(
                txt: 'Register',
                onpressed: () {
                  Navigator.pushNamed(context, register_screan.ID);
                }),
          ],
        ),
      ),
    );
  }
}
