import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class txtenmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: TextLiquidFill(
        text: 'Flash Chat',
        waveColor: Colors.blue,
        boxBackgroundColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
        ),
        boxHeight: 150.0,
      ),
    );
  }
}

class hero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Hero(
        tag: '1',
        child: Container(
          child: Image.asset('images/OIP (1).png'),
          height: 80,
        ),
      ),
    );
  }
}

class roundbutton extends StatelessWidget {
  var txt;
  late void Function() onpressed;
  roundbutton({this.txt, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.lightBlue,
        child: MaterialButton(
          onPressed: onpressed,
          child: Text(txt),
        ),
      ),
    );
  }
}

class txtfield extends StatelessWidget {
  var txt;
  txtfield({this.txt});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black),
      decoration: kinputdecoration.copyWith(hintText: txt),
    );
  }
}
