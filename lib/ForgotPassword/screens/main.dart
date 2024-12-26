import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Common/app_styles.dart';
import '../../Common/button_component.dart';
import '../../Common/textfield_component.dart';
import '../../Login/screens/main.dart';

class ForgorPasswordScreen extends StatefulWidget {
  const ForgorPasswordScreen({super.key});

  @override
  State<ForgorPasswordScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<ForgorPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Get.to(() => const LoginScreen());
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
                      Text("Forgot Password",
                          style: Theme.of(context).textTheme.headlineLarge),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Reset your password and regain access to your account securely",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 25.0,
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
                      ButtonComponent(
                        buttonEvent: () {},
                        buttonTitle: "Verify",
                      ),
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
