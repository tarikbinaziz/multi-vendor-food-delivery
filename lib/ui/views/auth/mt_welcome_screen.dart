import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/views/auth/mt_signin.dart';
import 'package:multivendor_food_delivery_app/ui/widgets/mt_button.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import 'mt_phone_auth.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo/logo.png",
            height: 160,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 52.0, right: 52.0, top: 15),
            child: Text(
              "Sign in & Register to Maan Food",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              children: [
                WelcomeButton(
                    GoogleLogoWidget(
                      size: 15,
                    ),
                    "Continue with Google",
                    kButtonFBGColor,
                    kTitleColor,
                    () {}),
                const SizedBox(
                  height: 8,
                ),
                WelcomeButton(
                    const Icon(
                      FeatherIcons.facebook,
                      size: 20,
                      color: Colors.white,
                    ),
                    "Continue with Facebook",
                    kButtonSBGColor,
                    Colors.white,
                    () {}),
                const SizedBox(
                  height: 8,
                ),
                WelcomeButton(
                    const Icon(
                      FeatherIcons.phone,
                      size: 20,
                    ),
                    "Continue with Phone",
                    kButtonFBGColor,
                    kTitleColor, () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const PhoneAuth()));
                }),
                const SizedBox(
                  height: 8,
                ),
                WelcomeButton(
                    const Icon(
                      FeatherIcons.mail,
                      size: 20,
                    ),
                    "Continue with Email",
                    kButtonFBGColor,
                    kTitleColor,
                    () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SignInScreen()))),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 44.0, right: 44.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: "By continuing, you agree to our ",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: kSubTitleColor,
                ),
                children: [
                  TextSpan(
                    text: "Terms & Conditions and privacy policy",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
