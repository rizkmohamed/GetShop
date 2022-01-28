import 'package:get/route_manager.dart';
import 'package:getshop/view/screens/auth/forgot_password.dart';
import 'package:getshop/view/screens/auth/login.dart';
import 'package:getshop/view/screens/auth/register.dart';
import 'package:getshop/view/screens/home.dart';
import 'package:getshop/view/screens/product/category.dart';
import 'package:getshop/view/screens/product/wishlist.dart';
import 'package:getshop/view/screens/settings.dart';
import 'package:getshop/view/screens/welcome.dart';

class AppRouts {
  // initial Routs
static const welcome = Routs.welcomePage;
// get pages
  static final routs = [
    GetPage(name: Routs.welcomePage, page: () => const WelcomePage()),
    GetPage(name: Routs.loginPage, page: () => const LoginPage(),),
    GetPage(name: Routs.registerPage, page: () => const RegisterPage()),
    GetPage(
        name: Routs.forgetPasswordPage, page: () => const ForgotPasswordPage()),
    GetPage(name: Routs.categoryPage, page: () => const CategoryPage()),
    GetPage(name: Routs.settingsPage, page: () => const SettingsPage()),
    GetPage(name: Routs.wishlistPage, page: () => const WishlistPage()),
    GetPage(name: Routs.homePage, page: () => const HomePage()),
  ];
}

class Routs {
  static const welcomePage = '/welcomePage';
  static const loginPage = '/loginPage';
  static const registerPage = '/registerPage';
  static const forgetPasswordPage = '/forgetPasswordPage';
  static const categoryPage = '/categoryPage';
  static const settingsPage = '/settingsPage';
  static const wishlistPage = '/wishlistPage';
  static const homePage = '/homePage';
}
