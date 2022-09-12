import 'package:flutter/material.dart';

import '../../const/const.dart';

class AboutusScreen extends StatelessWidget {
  const AboutusScreen({Key? key}) : super(key: key);

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
          'About us',
          style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "About us",
              style: TextStyle(color: kTitleColor,fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10.0,),

            Text(
              descriptonAboutUs,
              style: const TextStyle(color: kSubTitleColor,fontWeight: FontWeight.w400),
            ),

          ],
        ),
      ),
    );
  }
}
