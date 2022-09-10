import 'package:flutter/material.dart';

import '../../const/const.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'Privacy Policy',
          style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text(
              "Disclosures of Your Information",
              style: TextStyle(color: kTitleColor,fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15.0,),

            Text(
              descriptionpp1,
              style: TextStyle(color: kSubTitleColor,fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20.0,),
            Text(
              "Legal Disclaimer",
              style: TextStyle(color: kTitleColor,fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15.0,),

            Text(
              descriptionpp2,
              style: TextStyle(color: kSubTitleColor,fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20.0,),
            Text(
              "Cookies",
              style: TextStyle(color: kTitleColor,fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15.0,),

            Text(
              cockiesDesc,
              style: TextStyle(color: kSubTitleColor,fontWeight: FontWeight.w400),
            ),

          ],
        ),
      ),
    );
  }
}
