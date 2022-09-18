import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ietiansdiary/services/googleAuth.dart';

class LoginUI extends StatefulWidget {
  //const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginUI> {
  String? email;
  String? username;
  Authentication auth=Authentication();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/backgroundInLogin.png',
              fit: BoxFit.cover,
              height: 850,
              color: Colors.black54,
              colorBlendMode: BlendMode.overlay,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RotatedBox(
                  quarterTurns: 2,
                  child: Center(
                    child: Container(
                      width: 305,
                      height: 574,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment(
                                0.0005181710002943873, 1.0580636262893677),
                            end: Alignment(
                                -1.0580636262893677, 0.001835245406255126),
                            colors: [
                              Color.fromRGBO(81, 119, 255, 0),
                              Color.fromRGBO(56, 182, 255, 1)
                            ]),
                      ),
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //login image container
                            Container(
                                width: 92,
                                height: 93,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                          width: 92,
                                          height: 93,
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(92, 93)),
                                          ))),
                                  Positioned(
                                      top: 7,
                                      left: 6,
                                      child: Container(
                                          width: 81,
                                          height: 81,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/login-logo.png"),
                                                fit: BoxFit.fitWidth),
                                          ))),
                                ])),
                            const SizedBox(height: 50.0),
                            //TEXT "IETIAN's Diary"
                            const Text(
                              "IETIAN's Diary",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            const SizedBox(height: 100.0),
                            //google container
                            InkWell(

                              onTap: ()async {print(username);
                                //Login Functionality called here
                                // print("google sign in tapped");
                              if(username==null) {
                                UserCredential data=await auth.signInWithGoogle();
                                //setting state variables
                                setState(() {
                                  username = auth.username;
                                  email = auth.email;
                                });
                                //for debug purpose printing auth email and username
                                print(
                                    "GOOGLE AUTHENTIFICATION CALLED  $username and $email...");
                              }else{
                                // to

                                await FirebaseAuth.instance.signOut() ;
                                await GoogleSignIn().signOut();

                                setState(() {
                                  username=null;
                                  email=null;
                                });}
                                // print("GOOGLE AUTHENTIFICATION CALLED $username and $email...");

                              },
                              child: Container(
                                width: 93,
                                height: 93,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(93, 93)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/profile_vrt_raw_bytes_1587515358_10512.png"))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ], // Stack children
        ),
      ),
    );
  }
}
