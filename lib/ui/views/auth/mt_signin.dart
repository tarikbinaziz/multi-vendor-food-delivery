import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/views/auth/mt_forgot_password.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Location/mt_location.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign In",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kTitleColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/logo/logo.png",
                  height: 160,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Email Address ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              AppTextField(
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFDEDEE0))),
                    hintText: "Enter your Email  ",
                    hintStyle: TextStyle(color: kSubTitleColor),
                    prefixIcon: Icon(
                      FeatherIcons.user,
                      color: kMainColor,
                    )),
                textFieldType: TextFieldType.EMAIL,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Password",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              AppTextField(
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFDEDEE0))),
                  hintText: "Enter your  password",
                  hintStyle: TextStyle(color: kSubTitleColor),
                  prefixIcon: Icon(
                    FeatherIcons.lock,
                    color: kMainColor,
                  ),
                ),
                textFieldType: TextFieldType.PASSWORD,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()));
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: kSubTitleColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>const LocationScreen()));},
                style: ElevatedButton.styleFrom(primary: kMainColor, minimumSize: const Size(372, 50)),
                child: const Text("Sign In"),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "or ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: kSubTitleColor),
                    children: [
                      TextSpan(
                        text: "Register a new account",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
