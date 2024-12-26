import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_app/Login/screens/main.dart';
import 'package:sport_app/Register/screens/main.dart';

import '../../Common/button_component.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "[ GearUp ]".toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            letterSpacing: 5,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      "Discover premium sportswear, tailored for your active lifestyle. Shop, save, and elevate your fitness game!",
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ButtonComponent(
                          buttonTextColor:
                              Theme.of(context).secondaryHeaderColor,
                          bgButtonColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          buttonEvent: () {
                            Get.to(() => const LoginScreen());
                          },
                          buttonTitle: "Sign in"),
                      const SizedBox(height: 25.0),
                      ButtonComponent(
                          buttonEvent: () {
                            Get.to(() => const RegisterScreen());
                          },
                          buttonTitle: "Register"),
                    ],
                  ))
            ],
          )),
    );
  }
}
