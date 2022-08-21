import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class WelcomeButton extends StatelessWidget {
  //Icon icon;
  Widget widget;
  String text;
  Color color;
  Function function;

  WelcomeButton(this.widget, this.text, this.color, this.function);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)), color: color),
        child: ListTile(
          minLeadingWidth: 10,
          leading: widget,
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          trailing: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: kArrowContainerColor),
            child: Icon(FeatherIcons.arrowRight),
          ),
        ),
      ),
    );
  }
}
