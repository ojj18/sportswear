import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_app/ForgotPassword/screens/main.dart';

import '../../Common/app_styles.dart';
import '../../Common/button_component.dart';
import '../../Common/textfield_component.dart';
import '../../Register/screens/main.dart';
import '../../Welcome/screens/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Get.to(() => const WelcomeScreen());
            },
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).textTheme.bodySmall!.color,
              size: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: fontSize30)
                  .fontSize,
            )),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Login",
                          style: Theme.of(context).textTheme.headlineLarge),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Welcome back! Log in to access your account.",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFieldComponent(
                        textInputType: TextInputType.emailAddress,
                        labelText: "Email",
                        hintText: "Please enter the email",
                        suffixIcon: Icons.email_outlined,
                        onError: (value) {
                          if (value.isEmpty) {
                            return "This field is Required";
                          }
                        },
                        onSaved: (value) {},
                      ),
                      TextFieldComponent(
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        labelText: "Password",
                        hintText: "Please enter the password",
                        suffixIcon: Icons.smartphone_outlined,
                        onError: (value) {
                          if (value.isEmpty) {
                            return "This field is Required";
                          }
                        },
                        onSaved: (value) {},
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            Get.to(() => const ForgorPasswordScreen());
                          },
                          child: Text(
                            "Forgor Password?",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: accentColor,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      ButtonComponent(
                        buttonEvent: () {},
                        buttonTitle: "Login",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                height: 1.5,
                                color: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .color!
                                    .withOpacity(0.6),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "OR",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                height: 1.5,
                                color: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .color!
                                    .withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Already have an account?",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => const RegisterScreen());
                        },
                        child: Text(
                          "Register",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: accentColor,
                                  ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
