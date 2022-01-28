import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextDecoration underLine;
  const CustomText(
      {Key? key,
      required this.text,
      required this.color,
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal,
      this.underLine = TextDecoration.none})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.eagleLake(
        textStyle: TextStyle(
          decoration: underLine,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
