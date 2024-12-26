import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Common/app_styles.dart';
import '../../Common/button_component.dart';
import '../../Common/textfield_component.dart';
import '../../Login/screens/main.dart';
import '../../Welcome/screens/main.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      Text("Register",
                          style: Theme.of(context).textTheme.headlineLarge),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Create your account and join the GearUp community!",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFieldComponent(
                        textInputType: TextInputType.name,
                        labelText: "User name",
                        hintText: "Please enter the user name",
                        suffixIcon: Icons.person_2_outlined,
                        onError: (value) {
                          if (value.isEmpty) {
                            return "This field is Required";
                          }
                        },
                        onSaved: (value) {},
                      ),
                      TextFieldComponent(
                        textInputType: TextInputType.phone,
                        labelText: "Phone number",
                        hintText: "Please enter the phone number",
                        suffixIcon: Icons.smartphone_outlined,
                        onError: (value) {
                          if (value.isEmpty) {
                            return "This field is Required";
                          }
                        },
                        onSaved: (value) {},
                      ),
                      TextFieldComponent(
                        textInputType: TextInputType.emailAddress,
                        labelText: "Email address",
                        hintText: "Please enter the email address",
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
                        labelText: "Password",
                        hintText: "Please enter the password",
                        obscureText: true,
                        suffixIcon: Icons.lock_outline,
                        onError: (value) {
                          if (value.isEmpty) {
                            return "This field is Required";
                          }
                        },
                        onSaved: (value) {},
                      ),
                      TextFieldComponent(
                        textInputType: TextInputType.visiblePassword,
                        labelText: "confirm password",
                        hintText: "Please enter the confirm password",
                        obscureText: true,
                        suffixIcon: Icons.lock_outline,
                        onError: (value) {
                          if (value.isEmpty) {
                            return "This field is Required";
                          }
                        },
                        onSaved: (value) {},
                      ),
                      ButtonComponent(
                        buttonEvent: () {},
                        buttonTitle: "Register",
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
                          Get.to(() => const LoginScreen());
                        },
                        child: Text(
                          "Sign in",
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
