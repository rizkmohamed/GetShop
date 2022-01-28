import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop/utils/constants/app_colors.dart';
import 'package:getshop/view/screens/auth/login.dart';

import 'services/routs/routs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Shop',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.light,
      home: const LoginPage(),
      // initialRoute: AppRouts.welcome,

      getPages: AppRouts.routs,
    );
  }
}
