import 'package:flutter/material.dart';
import 'package:ietiansdiary/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name in title...
      title: "IETian's Diary",
      //theme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //fontFamily: "",
      ),
      home: const SplashScreen(),
    );
  }
}
