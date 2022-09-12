import 'package:flutter/cupertino.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

// ignore: must_be_immutable
class CartButton extends StatelessWidget {
  String text;

  CartButton(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        width: context.width(),
        height: 50,
        decoration: BoxDecoration(
          color: kMainColor,
          border: Border.all(color: kMainColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(color: kCircleContainer),
        )));
  }
}
