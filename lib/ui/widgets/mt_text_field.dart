import 'package:flutter/material.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hint;
  Text lebel;

  CustomTextField(this.hint, this.lebel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          hintStyle: const TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
          label: lebel,
          labelStyle: const TextStyle(color: kLebelColor, fontWeight: FontWeight.w400),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: const BorderSide(color: kDividerColor))),
    );
  }
}
