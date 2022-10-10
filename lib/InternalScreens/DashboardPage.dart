import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ietiansdiary/RoadMaps.dart';
import 'package:ietiansdiary/SelectBranchAndSemForNotes.dart';
import 'package:ietiansdiary/SelectBranchAndSemForPreviousYearPapers.dart';
import 'package:ietiansdiary/SelectBranchAndSemForSyllabus.dart';

final NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard = TextStyle(
  color: Colors.black,
  //fontFamily: 'Poppins',
  fontSize: 18,
  letterSpacing: 0,
  fontWeight: FontWeight.w500,
  height: 1,
);

final FeatuerTextStyle = GoogleFonts.openSans(
    textStyle: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 13, color: Colors.grey));

final SecondaryLinesTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.black,
    //fontFamily: 'Poppins',
    fontSize: 15,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    height: 1,
  ),
);

final SecondaryLinesTextStyleInGreyColor = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.grey,
    //fontFamily: 'Poppins',
    fontSize: 15,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    height: 1,
  ),
);

final Join_Now_Button_TextStyle = GoogleFonts.poppins(textStyle:TextStyle(fontWeight:FontWeight.w700,fontSize:12,color:Colors.white));

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List OverlappingImages = [
    "https://learnenglish.britishcouncil.org/sites/podcasts/files/styles/max_325x325/public/2021-10/RS8003_GettyImages-994576028-hig.jpg?itok=m0rIP3zI",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzHMDlwRCHOHZP_tX7jRYNxV8W8MpNEog45w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_w_Bqpra0F_-HRdKJCxpkyKRAh8MJrzWOtA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQEZrATmgHOi5ls0YCCQBTkocia_atSw0X-Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYH_VDaGfxQ_cPhkgDPyoxXJgnnKHzEw7kdg&usqp=CAU",
    "https://www.morganstanley.com/content/dam/msdotcom/people/tiles/isaiah-dwuma.jpg.img.490.medium.jpg/1594668408164.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://www.seekpng.com/png/full/356-3562377_personal-user.png"),
                  ),
                  const Icon(
                    Icons.notifications_none_outlined,
                    size: 35,
                  )
                ],
              ),
              const SizedBox(height: 7),
              Column(children: [
                Row(
                  children: [
                    Text("Good Morning",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          textStyle:
                              NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard,
                        )),
                    const SizedBox(width: 6),
                    Image.asset(
                      "assets/images/hello.png",
                      height: 27,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(children: [
                  Text("Username",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle:
                            NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard,
                      )),
                ]),
                const SizedBox(height: 7),
                // ignore: prefer_const_literals_to_create_immutables
                Row(children: [
                  Text(
                    "NEW FEATURE",
                    textAlign: TextAlign.left,
                    style: FeatuerTextStyle,
                  ),
                ]),
              ]),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 280,
                      width: 310,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xffa5e1fd)),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Discussion Forum",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          textStyle:
                                              NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard,
                                        )),
                                    const SizedBox(width: 13),
                                    Image.asset(
                                      "assets/images/chat.png",
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 7),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                    style: SecondaryLinesTextStyle),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text("Interviews"),
                                    style: TextButton.styleFrom(
                                      primary: Colors.black38,
                                      backgroundColor:
                                          Colors.white54, // Background Color
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text("Exams"),
                                    style: TextButton.styleFrom(
                                      primary: Colors.black38,
                                      backgroundColor:
                                          Colors.white54, // Background Color
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 50),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            for (int i = 0; i < 4; i++)
                                              Align(
                                                widthFactor: 0.45,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                      radius: 15,
                                                      backgroundColor: Colors.black,
                                                      backgroundImage:
                                                          NetworkImage(
                                                              OverlappingImages[
                                                                  i])),
                                                ),
                                              ),
                                          ],
                                        ),
                                        SizedBox(width: 1),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.add,
                                            size: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.black, // Background color
                                      onPrimary: Colors
                                          .white, // Text Color (Foreground color)
                                    ),
                                    onPressed: () {},
                                    child: Text("Join Now" ,style: Join_Now_Button_TextStyle , ),
                                    clipBehavior: Clip.antiAlias,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      height: 280,
                      width: 310,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xfff6c3d4)),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Discussion Forum",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          textStyle:
                                              NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard,
                                        )),
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    Image.asset(
                                      "assets/images/chat.png",
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 7),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                    style: SecondaryLinesTextStyle),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text("Interviews"),
                                    style: TextButton.styleFrom(
                                      primary: Colors.black38,
                                      backgroundColor:
                                          Colors.white54, // Background Color
                                    ),
                                  ),
                                  const SizedBox(width: 9),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text("Exams"),
                                    style: TextButton.styleFrom(
                                      primary: Colors.black38,
                                      backgroundColor:
                                          Colors.white54, // Background Color
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 50),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            for (int i = 0; i < 4; i++)
                                              Align(
                                                widthFactor: 0.45,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                      radius: 15,
                                                      backgroundColor: Colors.black,
                                                      backgroundImage:
                                                          NetworkImage(
                                                              OverlappingImages[
                                                                  i])),
                                                ),
                                              ),
                                          ],
                                        ),
                                        SizedBox(width: 1),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.add,
                                            size: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //const Text(""),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.black, // Background color
                                      onPrimary: Colors
                                          .white, // Text Color (Foreground color)
                                    ),
                                    onPressed: () {},
                                    child: Text("Join Now" , style: Join_Now_Button_TextStyle,),
                                    clipBehavior: Clip.antiAlias,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      height: 280,
                      width: 310,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xffdefbbd)),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Discussion Forum",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard)),
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    Image.asset(
                                      "assets/images/chat.png",
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 7),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                    style: SecondaryLinesTextStyle),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text("Interviews"),
                                    style: TextButton.styleFrom(
                                      primary: Colors.black38,
                                      backgroundColor:
                                          Colors.white54, // Background Color
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text("Exams"),
                                    style: TextButton.styleFrom(
                                      primary: Colors.black38,
                                      backgroundColor:
                                          Colors.white54, // Background Color
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 50),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            for (int i = 0; i < 4; i++)
                                              Align(
                                                widthFactor: 0.45,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.black,
                                                  child: CircleAvatar(
                                                      radius: 15,
                                                      backgroundColor: Colors.black,
                                                      backgroundImage:
                                                          NetworkImage(
                                                              OverlappingImages[
                                                                  i])),
                                                ),
                                              ),
                                          ],
                                        ),
                                        SizedBox(width: 1),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.add,
                                            size: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //const Text(""),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.black, // Background color
                                      onPrimary: Colors
                                          .white, // Text Color (Foreground color)
                                    ),
                                    onPressed: () {},
                                    child: Text("Join Now",style: Join_Now_Button_TextStyle,),
                                    clipBehavior: Clip.antiAlias,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              // ignore: prefer_const_literals_to_create_immutables
              Row(children: [
                Text("ALL FEATURE",
                    textAlign: TextAlign.left, style: FeatuerTextStyle),
              ]),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) =>
                          const SelectBranchAndSemesterForSyllabus(),
                    ));
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffe6fbcd),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.book,
                        size: 60,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Syllabus",
                          style: GoogleFonts.poppins(
                            textStyle:
                                NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard,
                          ),
                        ),
                        Text("Lorem Ipsum is",
                            style: SecondaryLinesTextStyleInGreyColor),
                        Text(
                          "simply dummy text.",
                          style: SecondaryLinesTextStyleInGreyColor,
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      "assets/images/54919.png",
                      height: 35,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) =>
                          const SelectBranchAndSemesterForPreviousYearPapers(),
                    ));
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xfff9b3ca),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.calendar_today,
                        size: 60,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Previous Papers",
                          style: GoogleFonts.poppins(
                              textStyle:
                                  NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard),
                        ),
                        Text(
                          "Lorem Ipsum is",
                          style: SecondaryLinesTextStyleInGreyColor,
                        ),
                        Text(
                          "simply dummy text.",
                          style: SecondaryLinesTextStyleInGreyColor,
                        ),
                        SizedBox(height: 30)
                      ],
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      "assets/images/54919.png",
                      height: 35,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) =>
                          const SelectBranchAndSemesterForNotes(),
                    ));
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xff8beaba),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.notes,
                        size: 60,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Notes",
                          style: GoogleFonts.poppins(
                              textStyle:
                                  NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard),
                        ),
                        Text(
                          "Lorem Ipsum is",
                          style: SecondaryLinesTextStyleInGreyColor,
                        ),
                        Text(
                          "simply dummy text.",
                          style: SecondaryLinesTextStyleInGreyColor,
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      "assets/images/54919.png",
                      height: 35,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) =>
                          const RoadMaps(),
                    ));
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xff8beaba),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.content_paste_go_sharp,
                        size: 60,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Road Maps",
                          style: GoogleFonts.poppins(
                              textStyle:
                                  NameHelloMsgDiscussionForumTextStyleAboveOfDashBoard),
                        ),
                        Text(
                          "Lorem Ipsum is",
                          style: SecondaryLinesTextStyleInGreyColor,
                        ),
                        Text(
                          "simply dummy text.",
                          style: SecondaryLinesTextStyleInGreyColor,
                        ),
                        const SizedBox(
                          height: 30
                        )
                      ],
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      "assets/images/54919.png",
                      height: 35,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
