import 'package:bmi_calculator/screens/genderpage.dart';
import 'package:bmi_calculator/screens/show_output.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Datagive extends StatefulWidget {
  Datagive({super.key, required this.gender});
  dynamic gender;

  @override
  State<Datagive> createState() => _DatagiveState();
}

double weight = 65;
double age = 25;
double height = 175;

double caluclatebmi(double weight, double height) {
  double height_meter = height / 100;
  double bmi = weight / (height_meter * height_meter);
  return bmi;
}

class _DatagiveState extends State<Datagive> {
  @override
  @override
  void initState() {
    super.initState();
    weight = 65;
    age = 25;
    height = 175;
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.roboto(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                  children: const [
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
              const SizedBox(height: 30),
              Text(
                "Please modify the value",
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  color: const Color(0xff0A1207),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffFBF6EE),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight (kg)",
                          style: GoogleFonts.roboto(
                            color: const Color(0xffACACAC),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: GoogleFonts.roboto(
                            color: const Color(0xffCE922A),
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },

                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    size: 28,
                                    color: Color(0xff9D6F1F),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 28,
                                    color: Color(0xff9D6F1F),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffFBF6EE),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "age",
                          style: GoogleFonts.roboto(
                            color: const Color(0xffACACAC),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: GoogleFonts.roboto(
                            color: const Color(0xffCE922A),
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: Color(0xff9D6F1F),
                                  size: 33,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xff9D6F1F),
                                  size: 33,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Card(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    color: const Color(0xffFBF6EE),
                    child: Column(
                      children: [
                        Text(
                          "Height (cm)",
                          style: GoogleFonts.roboto(
                            color: const Color(0xffACACAC),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          height.toString(),
                          style: GoogleFonts.roboto(
                            color: const Color(0xffCE922A),
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SfSlider(
                          min: 100,
                          max: 250.0,
                          value: height,
                          interval: 20,
                          showTicks: true,
                          showLabels: true,
                          inactiveColor: Color(0xffACACAC),
                          minorTicksPerInterval: 1,
                          activeColor: Color(0xffCE922A),
                          stepSize: 1,
                          onChanged: (dynamic newValue) {
                            setState(() {
                              height = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  double bmi = caluclatebmi(weight, height);
                  // ====================================================Start work from there in the morining
                  // Show BMI result in a dialog
                  outputdailog(
                    context,
                    bmi: bmi,
                    bmiCategory: _getBmiCategory(bmi),
                    weight: weight,
                    height: height,
                    age: age,
                    gen: widget.gender["gender"],
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff65B741),
                  minimumSize: const Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Continue",
                  style: GoogleFonts.roboto(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String _getBmiCategory(double bmi) {
  if (bmi < 18.5)
    return "Underweight";
  else if (bmi < 25)
    return "Normal weight";
  else if (bmi < 30)
    return "Overweight";
  else
    return "Obese";
}
