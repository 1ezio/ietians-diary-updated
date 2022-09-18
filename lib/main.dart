import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ietiansdiary/WelcomePage.dart';

import 'LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'Welcome',
      routes: {
        'Welcome': (context) => WelcomePageUI(
              title: 'WELCOMEPAGE',
            ),
        'Login': (context) => LoginUI(),
      },
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "IETian's Diary",
      home:
          LoginUI(), //yaha par routes define kar dena LoginUI() ke place par git
    );
  }
}
