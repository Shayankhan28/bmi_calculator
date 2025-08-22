import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> outputdailog(
  BuildContext context, {
  required double bmi,
  required double weight,
  required double height,
  required double age,
  required String gen,
  required String bmiCategory,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Color(0xFFF5FBF5),
      title: Center(
        child: Text(
          "Your BMI:",
          style: GoogleFonts.roboto(
            color: const Color(0xff0A1207),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            bmi.toStringAsFixed(1),
            style: GoogleFonts.roboto(
              color: const Color(0xff519234),
              fontSize: 64,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Your BMI is $bmiCategory",
            style: GoogleFonts.roboto(
              color: const Color(0xff0A1207),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Divider(color: const Color(0xffACACAC)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "${weight.toStringAsFixed(0)} kg",
                style: GoogleFonts.lato(
                  color: const Color(0xff519234),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "${height.toStringAsFixed(0)} cm",
                style: GoogleFonts.lato(
                  color: const Color(0xff519234),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),

              Text(
                "${age.toStringAsFixed(0)} ",
                style: GoogleFonts.lato(
                  color: const Color(0xff519234),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                gen,
                style: GoogleFonts.lato(
                  color: const Color(0xff519234),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Weight",
                style: GoogleFonts.lato(
                  color: const Color(0xffACACAC),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Height",
                style: GoogleFonts.lato(
                  color: const Color(0xffACACAC),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              Text(
                "Age",
                style: GoogleFonts.lato(
                  color: const Color(0xffACACAC),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Gender",
                style: GoogleFonts.lato(
                  color: const Color(0xffACACAC),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            "Healthy Weight Range:",
            style: GoogleFonts.lato(
              color: const Color(0xff0A1207),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "18.5-24.9",
            style: GoogleFonts.lato(
              color: const Color(0xff519234),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff65B741),
              minimumSize: const Size(300, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Close",
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
  );
}
