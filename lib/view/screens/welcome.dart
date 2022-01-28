import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:getshop/services/routs/routs.dart';
import 'package:getshop/utils/constants/app_colors.dart';
import 'package:getshop/utils/constants/app_styles.dart';
import 'package:getshop/view/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            )),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.3,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: defaultpadding),
                // height: height * 0.1,
                width: width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: CustomText(
                    text: 'Welcome',
                    color: kwhite,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: defaultpadding,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: defaultpadding),
                // height: height * 0.1,
                width: width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'Get ',
                      style: GoogleFonts.eagleLake(
                        textStyle: const TextStyle(
                          color: kprimaryColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextSpan(
                        text: 'Shop',
                        style: GoogleFonts.eagleLake(
                          textStyle: const TextStyle(
                            color: kwhite,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ])),
                ),
              ),
              const SizedBox(
                height: defaultpadding,
              ),
              SizedBox(
                height: height * 0.2,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.offNamed(Routs.loginPage);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: defaultpadding, horizontal: width * 0.1),
                    child: const CustomText(
                      text: 'Get Start',
                      color: kwhite,
                      fontSize: 22,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: kprimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
              SizedBox(
                height: height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    text: "Don't have an Account?",
                    color: kwhite,
                    fontSize: 18,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offNamed(Routs.registerPage);
                    },
                    child: const CustomText(
                      text: "Register",
                      color: kprimaryColor,
                      fontSize: 18,
                      underLine: TextDecoration.underline,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    )));
  }
}
