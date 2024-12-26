import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Common/app_styles.dart';
import 'Common/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: routes,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "DMSans",
        scaffoldBackgroundColor: bgColor,
        primaryColor: secondaryColor,
        secondaryHeaderColor: secondaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: bgColor,
          foregroundColor: bgColor,
          elevation: 1.0,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: fontSize34,
            fontWeight: FontWeight.w600,
            color: secondaryColor,
          ),
          titleMedium: TextStyle(
              fontSize: fontSize16,
              fontWeight: FontWeight.w500,
              color: textColor),
          headlineLarge: TextStyle(
            fontSize: fontSize28,
            fontWeight: FontWeight.w600,
            color: secondaryColor,
          ),
          bodyMedium: TextStyle(
            fontSize: fontSize18,
            fontWeight: FontWeight.w500,
            color: bgColor,
          ),
          bodySmall: TextStyle(
              fontSize: fontSize18,
              fontWeight: FontWeight.w400,
              color: textColor),
        ),
      ),
    );
  }
}
