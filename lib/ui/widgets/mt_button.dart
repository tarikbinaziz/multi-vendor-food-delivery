import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../const/const.dart';

// ignore: must_be_immutable
class WelcomeButton extends StatelessWidget {
  //Icon icon;
  Widget widget;
  String text;
  Color color;
  Function function;
  Color textColor;

  WelcomeButton(this.widget, this.text, this.color, this.textColor, this.function, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: color),
        child: ListTile(
          minLeadingWidth: 10,
          leading: widget,
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: textColor),
          ),
          trailing: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: kArrowContainerColor),
            child: const Icon(FeatherIcons.arrowRight),
          ),
        ),
      ),
    );
  }
}
