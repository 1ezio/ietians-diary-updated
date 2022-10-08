
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectBranchAndSemesterForNotes extends StatefulWidget {
  const SelectBranchAndSemesterForNotes({Key? key}) : super(key: key);
  _SelectBranchAndSemesterForNotesState createState() =>
      _SelectBranchAndSemesterForNotesState();
}

class _SelectBranchAndSemesterForNotesState
    extends State<SelectBranchAndSemesterForNotes> {
  int BranchValue = 0;
  bool clickedBranch1 = false;
  bool clickedBranch2 = false;
  bool clickedBranch3 = false;
  bool clickedBranch4 = false;
  bool clickedBranch5 = false;
  bool clickedBranch6 = false;
  int SemValue = 0;
  bool clickedSem1 = false;
  bool clickedSem2 = false;
  bool clickedSem3 = false;
  bool clickedSem4 = false;
  bool clickedSem5 = false;
  bool clickedSem6 = false;
  bool clickedSem7 = false;
  bool clickedSem8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios, size: 20),
                      Text("Select", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                SizedBox(width: 210),
                Icon(Icons.notifications_none_outlined, size: 35)
              ],
            ),
            SizedBox(height: 25),
            Row(children: [
              Text("Select Branch",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            ]),
            SizedBox(height: 13),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          BranchValue = 1;
                          clickedBranch1 = !clickedBranch1;
                          clickedBranch2 = false;
                          clickedBranch3 = false;
                          clickedBranch4 = false;
                          clickedBranch5 = false;
                          clickedBranch6 = false;

                          print("Selected Branch Value is $BranchValue");
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedBranch1 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("CSE",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: (clickedBranch1 == false)
                                      ? Colors.black
                                      : Colors.pink)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          BranchValue = 2;
                          clickedBranch2 = !clickedBranch2;
                          clickedBranch1 = false;
                          clickedBranch3 = false;
                          clickedBranch4 = false;
                          clickedBranch5 = false;
                          clickedBranch6 = false;

                          print("Selected Branch Value is $BranchValue");
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedBranch2 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("IT",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: (clickedBranch2 == false)
                                      ? Colors.black
                                      : Colors.pink)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          BranchValue = 3;
                          clickedBranch3 = !clickedBranch3;
                          clickedBranch2 = false;
                          clickedBranch1 = false;
                          clickedBranch4 = false;
                          clickedBranch5 = false;
                          clickedBranch6 = false;

                          print("Selected Branch Value is $BranchValue");
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedBranch3 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("E&TC",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: (clickedBranch3 == false)
                                      ? Colors.black
                                      : Colors.pink)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          BranchValue = 4;
                          clickedBranch4 = !clickedBranch4;
                          clickedBranch2 = false;
                          clickedBranch3 = false;
                          clickedBranch1 = false;
                          clickedBranch5 = false;
                          clickedBranch6 = false;

                          print("Selected Branch Value is $BranchValue");
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedBranch4 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("E&I",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: (clickedBranch4 == false)
                                      ? Colors.black
                                      : Colors.pink)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          BranchValue = 5;
                          clickedBranch5 = !clickedBranch5;
                          clickedBranch2 = false;
                          clickedBranch3 = false;
                          clickedBranch4 = false;
                          clickedBranch1 = false;
                          clickedBranch6 = false;

                          print("Selected Branch Value is $BranchValue");
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedBranch5 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("Mech.",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  color: (clickedBranch5 == false)
                                      ? Colors.black
                                      : Colors.pink)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          BranchValue = 6;
                          clickedBranch6 = !clickedBranch6;
                          clickedBranch2 = false;
                          clickedBranch3 = false;
                          clickedBranch4 = false;
                          clickedBranch5 = false;
                          clickedBranch1 = false;

                          print("Selected Branch Value is $BranchValue");
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedBranch6 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("Civil",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: (clickedBranch6 == false)
                                      ? Colors.black
                                      : Colors.pink)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Row(children: [
              Text("Select Semester",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            ]),
            SizedBox(height: 13),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          SemValue = 1;
                          print("Selected Sem Value is $SemValue");
                          clickedSem1 = !clickedSem1;
                          clickedSem2 = false;
                          clickedSem3 = false;
                          clickedSem4 = false;
                          clickedSem5 = false;
                          clickedSem6 = false;
                          clickedSem7 = false;
                          clickedSem8 = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedSem1 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("1st",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: (clickedSem1 == false)
                                    ? Colors.black
                                    : Colors.pink,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          SemValue = 2;
                          print("Selected Sem Value is $SemValue");
                          clickedSem2 = !clickedSem2;
                          clickedSem1 = false;
                          clickedSem3 = false;
                          clickedSem4 = false;
                          clickedSem5 = false;
                          clickedSem6 = false;
                          clickedSem7 = false;
                          clickedSem8 = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedSem2 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("2nd",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: (clickedSem2 == false)
                                    ? Colors.black
                                    : Colors.pink,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          SemValue = 3;
                          print("Selected Sem Value is $SemValue");
                          clickedSem3 = !clickedSem3;
                          clickedSem1 = false;
                          clickedSem2 = false;
                          clickedSem4 = false;
                          clickedSem5 = false;
                          clickedSem6 = false;
                          clickedSem7 = false;
                          clickedSem8 = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedSem3 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("3rd",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: (clickedSem3 == false)
                                    ? Colors.black
                                    : Colors.pink,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          SemValue = 4;
                          print("Selected Sem Value is $SemValue");
                          clickedSem4 = !clickedSem4;
                          clickedSem1 = false;
                          clickedSem2 = false;
                          clickedSem3 = false;
                          clickedSem5 = false;
                          clickedSem6 = false;
                          clickedSem7 = false;
                          clickedSem8 = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedSem4 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("4th",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: (clickedSem4 == false)
                                    ? Colors.black
                                    : Colors.pink,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          SemValue = 5;
                          print("Selected Sem Value is $SemValue");
                          clickedSem5 = !clickedSem5;
                          clickedSem1 = false;
                          clickedSem2 = false;
                          clickedSem3 = false;
                          clickedSem4 = false;
                          clickedSem6 = false;
                          clickedSem7 = false;
                          clickedSem8 = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedSem5 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("5th",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: (clickedSem5 == false)
                                    ? Colors.black
                                    : Colors.pink,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          SemValue = 6;
                          print("Selected Sem Value is $SemValue");
                          clickedSem6 = !clickedSem6;
                          clickedSem1 = false;
                          clickedSem2 = false;
                          clickedSem3 = false;
                          clickedSem4 = false;
                          clickedSem5 = false;
                          clickedSem7 = false;
                          clickedSem8 = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedSem6 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("6th",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: (clickedSem6 == false)
                                    ? Colors.black
                                    : Colors.pink,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          SemValue = 7;
                          print("Selected Sem Value is $SemValue");
                          clickedSem7 = !clickedSem7;
                          clickedSem1 = false;
                          clickedSem2 = false;
                          clickedSem3 = false;
                          clickedSem4 = false;
                          clickedSem5 = false;
                          clickedSem6 = false;
                          clickedSem8 = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedSem7 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("7th",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: (clickedSem7 == false)
                                    ? Colors.black
                                    : Colors.pink,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          SemValue = 8;
                          print("Selected Sem Value is $SemValue");
                          clickedSem8 = !clickedSem8;
                          clickedSem1 = false;
                          clickedSem2 = false;
                          clickedSem3 = false;
                          clickedSem4 = false;
                          clickedSem5 = false;
                          clickedSem6 = false;
                          clickedSem7 = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: (clickedSem8 == false)
                                ? Colors.black
                                : Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text("8th",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: (clickedSem8 == false)
                                    ? Colors.black
                                    : Colors.pink,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 93, vertical: 23),
              child: ElevatedButton(
                //onHover: (value) => Colors.black,
                onPressed: () {
                  if (BranchValue == 0) {
                    print("Please Select a  Branch");
                  }
                  if (SemValue == 0) {
                    print("Plese Select a  Semester");
                  }
                  if (BranchValue == 1) {
                    if (SemValue == 1) {}
                    if (SemValue == 2) {}
                    if (SemValue == 3) {}
                    if (SemValue == 4) {}
                    if (SemValue == 5) {}
                    if (SemValue == 6) {}
                    if (SemValue == 7) {}
                    if (SemValue == 8) {}
                  }
                  if (BranchValue == 2) {
                    if (SemValue == 1) {}
                    if (SemValue == 2) {}
                    if (SemValue == 3) {}
                    if (SemValue == 4) {}
                    if (SemValue == 5) {}
                    if (SemValue == 6) {}
                    if (SemValue == 7) {}
                    if (SemValue == 8) {}
                  }
                  if (BranchValue == 3) {
                    if (SemValue == 1) {}
                    if (SemValue == 2) {}
                    if (SemValue == 3) {}
                    if (SemValue == 4) {}
                    if (SemValue == 5) {}
                    if (SemValue == 6) {}
                    if (SemValue == 7) {}
                    if (SemValue == 8) {}
                  }
                  if (BranchValue == 4) {
                    if (SemValue == 1) {}
                    if (SemValue == 2) {}
                    if (SemValue == 3) {}
                    if (SemValue == 4) {}
                    if (SemValue == 5) {}
                    if (SemValue == 6) {}
                    if (SemValue == 7) {}
                    if (SemValue == 8) {}
                  }
                  if (BranchValue == 5) {
                    if (SemValue == 1) {}
                    if (SemValue == 2) {}
                    if (SemValue == 3) {}
                    if (SemValue == 4) {}
                    if (SemValue == 5) {}
                    if (SemValue == 6) {}
                    if (SemValue == 7) {}
                    if (SemValue == 8) {}
                  }
                  if (BranchValue == 6) {
                    if (SemValue == 1) {}
                    if (SemValue == 2) {}
                    if (SemValue == 3) {}
                    if (SemValue == 4) {}
                    if (SemValue == 5) {}
                    if (SemValue == 6) {}
                    if (SemValue == 7) {}
                    if (SemValue == 8) {}
                  } else {
                    print(
                        "You selected Branch $BranchValue and Semester $SemValue");
                  }
                },

                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Next"),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ]),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xfff974a1),
                  //side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Color(0xfff494b4),
                      fontSize: 35,
                      fontStyle: FontStyle.normal),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
