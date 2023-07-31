import 'package:flash_chat/screans/login_screan.dart';
import 'package:flash_chat/screans/register_screan.dart';
import 'package:flash_chat/screans/welcome_screan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: welcome_screan.ID,
      routes: {
        welcome_screan.ID:(context)=>welcome_screan(),
        login_screan.ID:(context)=>login_screan(),
        register_screan.ID:(context)=>register_screan()
      },
      debugShowCheckedModeBanner: false,
      home:  welcome_screan()
    );
  }
}

