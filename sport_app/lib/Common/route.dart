import 'package:get/get.dart';

import '../Intro/screens/main.dart';
import '../Login/screens/main.dart';
import '../Register/screens/main.dart';
import '../Welcome/screens/main.dart';

final routes = [
  GetPage(
    name: "/",
    page: () => const IntroScreen(),
  ),
  GetPage(
    name: "/welcomeScreen",
    page: () => const WelcomeScreen(),
  ),
  GetPage(
    name: "/registerScreen",
    page: () => const RegisterScreen(),
  ),
  GetPage(
    name: "/loginScreen",
    page: () => const LoginScreen(),
  ),
];
