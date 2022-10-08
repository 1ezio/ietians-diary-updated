import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'screens.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Image.asset("assets/images/Students1.png", colorBlendMode: BlendMode.darken, ),
            const SizedBox(height: 50),
            const Text("Let’s get you started,",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1)),
            const SizedBox(height: 5),
            const Text("Sign in below to continue",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1)),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: OutlinedButton(
                clipBehavior: Clip.antiAlias,
                //autofocus: true,
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                    builder: (context) => const InternalScreens(),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Search1.png",
                        height: 25,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Sign in with Google',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(19, 19, 19, 1),
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "By signing in you agree to our ",
                      style: TextStyle(fontSize: 10, color: Colors.black)),
                  TextSpan(
                      text: "terms & conditions.",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
