import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

import 'mt_register.dart';

class PhoneAuth extends StatelessWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Continue with Phone",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/logo/logo.png",
                height: 160,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Mobile Number",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            AppTextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFDEDEE0))),
                  hintText: "Enter your phone number",
                  hintStyle: TextStyle(color: kSubTitleColor),
                  prefixIcon: Icon(
                    FeatherIcons.phone,
                    color: kMainColor,
                  )),
              textFieldType: TextFieldType.PHONE,
            ),
            SizedBox(
              height: 34,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => RegisterScreen()));
              },
              child: Text("Continue"),
              style: ElevatedButton.styleFrom(
                  primary: kMainColor, minimumSize: Size(372, 50)),
            )
          ],
        ),
      ),
    ));
  }
}
