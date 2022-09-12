import 'package:flutter/material.dart';

import '../../const/const.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        title: const Text(
          'Privacy Policy',
          style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Disclosures of Your Information",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              descriptionpp1,
              style: const TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Legal Disclaimer",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              descriptionpp2,
              style: const TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Cookies",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              cockiesDesc,
              style: const TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
