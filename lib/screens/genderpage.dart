import 'package:bmi_calculator/utills/routes.dart';
import 'package:bmi_calculator/utills/routesName.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Genderpage extends StatefulWidget {
  Genderpage({super.key});

  @override
  State<Genderpage> createState() => _GenderpageState();
}

class _GenderpageState extends State<Genderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  style: GoogleFonts.roboto(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "BMI ",
                      style: TextStyle(color: Color(0xffFFB534)),
                    ),

                    TextSpan(
                      text: "Calculator",
                      style: TextStyle(color: Color(0xff65B741)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              Text(
                "Please choose your gender",
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  color: Color(0xff0A1207),
                ),
              ),

              GestureDetector(
                child: Card(
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    color: Color(0xffF0F8EC),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 30),
                      child: Row(
                        children: [
                          Text(
                            "Male",
                            style: GoogleFonts.roboto(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff65B741),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/male.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routesname.Datagive,
                    arguments: {"gender": "Male"},
                  );
                },
              ),

              GestureDetector(
                child: Card(
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    color: Color(0xffFBF6EE),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 30),
                      child: Row(
                        children: [
                          Text(
                            "female",
                            style: GoogleFonts.roboto(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffCE922A),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/female.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routesname.Datagive,
                    arguments: {"gender": "Female"},
                  );
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Color(0xff65B741),
              //     minimumSize: Size(200, 60),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Text(
              //     "Select",
              //     style: GoogleFonts.roboto(
              //       fontSize: 32,
              //       fontWeight: FontWeight.w600,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
