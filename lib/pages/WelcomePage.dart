import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'LoginPage.dart';

class WelcomePageUI extends StatefulWidget {
  final String title;
  const WelcomePageUI({Key? key, required this.title}) : super(key: key);

  @override
  State<WelcomePageUI> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: 153.82951319240817 * (3.141592653589793 / 180),
              child: SvgPicture.asset('assets/ellipse5.svg',
                  semanticsLabel: 'ellipse5'),
            ),
            // Figma Flutter Generator WelcometoWidget - TEXT
            const Text(
              'Welcome to',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(34, 0, 89, 1),
                  fontFamily: 'Poppins',
                  fontSize: 36,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "IETian's Diary",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(34, 0, 89, 1),
                  fontFamily: 'Poppins',
                  fontSize: 36,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/Dictionarypana1.png'),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'This app provides you unlimited access to free study material that eases your college life.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(14, 3, 0, 0.800000011920929),
                  fontFamily: 'Poppins',
                  fontSize: 19.46666717529297,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w600,
                  height: 1.5 /*PERCENT not supported*/
                  ),
            ),
            const SizedBox(
              height: 6,
            ),
            InkWell(
              onTap: () {
                print("next button tapped");
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (Context) => LoginUI()));
              },
              child: Container(
                  width: 75,
                  height: 33,
                  alignment: Alignment.bottomLeft,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 75,
                            height: 33,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(37),
                                topRight: Radius.circular(37),
                                bottomLeft: Radius.circular(37),
                                bottomRight: Radius.circular(37),
                              ),
                              color: Color.fromRGBO(33, 0, 89, 1),
                            ))),
                    const Positioned(
                        top: 8,
                        left: 17,
                        child: Text(
                          'Next',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 19.46666717529297,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
