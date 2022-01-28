import 'package:flutter/material.dart';
import 'package:getshop/utils/constants/app_colors.dart';
import 'package:getshop/utils/constants/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultpadding),
        child: Column(
          children: [
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'REGISTER ',
                style: GoogleFonts.eagleLake(
                  textStyle: const TextStyle(
                    color: kprimaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ])),
            
          ],
        ),
      ),
    ));
  }
}
