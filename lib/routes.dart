import 'package:babyzone/view/screen/home/control/ControlScreenView.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:babyzone/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:babyzone/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:babyzone/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:babyzone/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:babyzone/view/screen/auth/login.dart';
import 'package:babyzone/view/screen/auth/signup.dart';
import 'package:babyzone/view/screen/auth/success_signup.dart';
import 'package:babyzone/view/screen/auth/verfiycodesignup.dart';
import 'package:babyzone/view/screen/home/home.dart';
import 'package:babyzone/view/screen/home/homeScreen.dart';
import 'package:babyzone/view/screen/home/notification_screen.dart';
import 'package:babyzone/view/screen/home/splash_screen.dart';
import 'package:babyzone/view/screen/language.dart';
import 'package:babyzone/view/screen/munesetting/aboutus.dart';
import 'package:babyzone/view/screen/munesetting/helppage.dart';
import 'package:babyzone/view/screen/munesetting/policy.dart';
import 'package:babyzone/view/screen/onboarding.dart';
import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';


List<GetPage<dynamic>>? routes = [
  //Auth
  GetPage(
      name: "/", page: () => const OnBoarding(), middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: () => const TestView()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.language, page: () => const Language()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(
      name: AppRoute.verfiyCodeResetPassword, page: () => const VerfiyCode()),

  //OnBoarding
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),

  GetPage(name: AppRoute.mySplashScreen, page: () =>  const SplashScreen()),
  // HOME
  GetPage(name: AppRoute.home, page: () => const HomePage()),
  GetPage(name: AppRoute.homeScreen, page: () => const HomeScreen()),
  GetPage(name: AppRoute.aboutUs, page: () => const AboutUs()),
  GetPage(name: AppRoute.helpPage, page: () => const HelpPage()),
  GetPage(name: AppRoute.policyReturn, page: () => const PolicyReturn()),
  // GetPage(name: AppRoute.search, page: () =>  SearchScreen()),
  GetPage(name: AppRoute.notificationScreen, page: () => const NotificationScreen()),
  GetPage(name: AppRoute.controlScreen, page: () => const ControlScreen()),

];
