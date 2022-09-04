import 'package:flutter/material.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';

class CustomTextField extends StatelessWidget {
 
  
  String hint;
  Text lebel;
  
  CustomTextField(this.hint,this.lebel);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hint,
        hintStyle: TextStyle(color: kSubTitleColor,fontWeight: FontWeight.w400),
        label:lebel,
        labelStyle: TextStyle(color: kLebelColor,fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: kDividerColor)
        )
      ),

    );
  }
}

