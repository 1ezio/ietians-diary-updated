import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ietiansdiary/OnBoardingPagesScreen.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(milliseconds: 4000),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const OnBoardingPagesScreen())));
  }

  //_navigate() async {
  //  await Future.delayed(Duration(seconds: 7), () {});
  //  Navigator.pushReplacement(
  //      context, MaterialPageRoute(builder: (context) => LoginScreen()));
  //}

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Center(
          child: CircleAvatar(
        child: Image.asset(
          "assets/images/logo.png",
          colorBlendMode: BlendMode.darken,
        ),
        maxRadius: 90,
        backgroundColor: Colors.transparent,
      )),
    );
  }
}









  


