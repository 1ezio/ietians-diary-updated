import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ietiansdiary/LoginScreen.dart';
import 'package:introduction_screen/introduction_screen.dart';

final TitteStyle = GoogleFonts.poppins( textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500) ) ;
final BodyStyle = GoogleFonts.poppins( textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w300) ) ;
class OnBoardingPagesScreen extends StatelessWidget {
  const OnBoardingPagesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return SafeArea(
      child: IntroductionScreen(
        done: const Text('Next', style: TextStyle(fontWeight: FontWeight.bold)),
        onDone: () {
          Navigator.of(context).pushReplacement(CupertinoPageRoute(
              builder: (BuildContext context) => const LoginScreen()));
        },
        //globalBackgroundColor: Colors.cyanAccent,
        animationDuration: 900,
        showSkipButton: true,
        skip: const Text("Skip",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.blue)),
        next: const Icon(Icons.arrow_forward_outlined, size: 17),
        
        onChange: (index) {
          print("$index selected");
        },
        dotsDecorator: DotsDecorator(
          color: const Color(0xff585757),
          size: const Size(13, 13),
          activeSize: const Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          activeColor: Colors.lightBlueAccent,
        ),
        pages: [
          PageViewModel(
            title:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            body:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            image: Center(
                child: Image.network(
                    "https://blog.darwinbox.com/hubfs/virtual-onboarding.png")),
            decoration: PageDecoration(
              bodyTextStyle:
                  BodyStyle,
              titleTextStyle:
                  TitteStyle,
              bodyPadding: const EdgeInsets.all(24).copyWith(bottom: 0),
              imagePadding: const EdgeInsets.all(24),
              pageColor: Colors.white,
            ),
          ),
          PageViewModel(
            title:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            body:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            image: Center(
                child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/4862/4862651.png")),
            decoration: PageDecoration(
              bodyTextStyle:
                  BodyStyle,
              titleTextStyle:
                  TitteStyle,
              bodyPadding: const EdgeInsets.all(24).copyWith(bottom: 0),
              imagePadding: const EdgeInsets.all(24),
              pageColor: Colors.white,
            ),
          ),
          PageViewModel(
            title:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            body:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            image: Center(
                child: Image.network(
                    "https://static.wixstatic.com/media/9c185e_53a76652f5254d1c91dd187c53e2e30e~mv2.png/v1/fill/w_640,h_360,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9c185e_53a76652f5254d1c91dd187c53e2e30e~mv2.png")),
            decoration: PageDecoration(
              bodyTextStyle:
                  BodyStyle,
              titleTextStyle:
                  TitteStyle,
              bodyPadding: const EdgeInsets.all(24).copyWith(bottom: 0),
              imagePadding: const EdgeInsets.all(24),
              pageColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}