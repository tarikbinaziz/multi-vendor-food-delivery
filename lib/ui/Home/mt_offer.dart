import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class OfferFoodScreen extends StatelessWidget {
  const OfferFoodScreen({Key? key}) : super(key: key);

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
          'Offer',
          style: TextStyle(color: kTitleColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              height: context.height() / 5.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/offerfood.png",
                      ),
                      fit: BoxFit.fitWidth)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: context.height() / 5.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage("assets/images/offerfood2.png"), fit: BoxFit.fitWidth)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: context.height() / 5.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(image: AssetImage("assets/images/offerfood3.png"), fit: BoxFit.fitWidth),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
