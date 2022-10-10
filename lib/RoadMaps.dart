import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class RoadMaps extends StatefulWidget {
  const RoadMaps({Key? key}) : super(key: key);

  @override
  State<RoadMaps> createState() => _RoadMapsState();
}

class _RoadMapsState extends State<RoadMaps> {
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
                        Text("Road Maps", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15)) ),
                      ],
                    ),
                  ),
                  SizedBox(width: 210),
                  Icon(Icons.notifications_none_outlined, size: 35)
                ],
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}