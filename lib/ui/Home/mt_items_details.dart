import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class ItemDtailsScreen extends StatefulWidget {
  const ItemDtailsScreen({Key? key}) : super(key: key);

  @override
  State<ItemDtailsScreen> createState() => _ItemDtailsScreenState();
}

class _ItemDtailsScreenState extends State<ItemDtailsScreen> {
  @override
  Widget build(BuildContext context) {
    bool _checkbox = false;
    bool _checkboxListTile = false;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              //   color: Colors.amberAccent,
              borderRadius: BorderRadius.all(Radius.circular(6)),
              image: DecorationImage(
                  image: AssetImage("assets/images/bigburger.png"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 24, right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      FeatherIcons.arrowLeft,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      FeatherIcons.heart,
                      color: kMainColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chicken burger first delivery",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$5.00",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: kTruckColor),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  description,
                  style: TextStyle(color: kSubTitleColor),
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: kDividerColor,
                  thickness: 2,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Variation",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 25,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kMiniContainerColor.withOpacity(0.15)),
                      child: Center(
                          child: Text(
                        "1 Required",
                        style: TextStyle(color: kMainColor),
                      )),
                    ),
                  ],
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Regular'), Text('Free')],
                  ),
                  value: _checkboxListTile,
                  onChanged: (value) {
                    setState(() {
                      _checkboxListTile = !_checkboxListTile;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Spicy'), Text('Free')],
                  ),
                  value: _checkboxListTile,
                  onChanged: (value) {
                    setState(() {
                      _checkboxListTile = !_checkboxListTile;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Extra Spicy'), Text('Free')],
                  ),
                  value: _checkboxListTile,
                  onChanged: (value) {
                    setState(() {
                      _checkboxListTile = !_checkboxListTile;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add ons for burger",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kTruckColor.withOpacity(0.10)),
                      child: Center(
                          child: Text(
                            "Optional",
                            style: TextStyle(color: kTruckColor),
                          )),
                    ),
                  ],
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Cheese'), Text('+ \$.50')],
                  ),
                  value: _checkboxListTile,
                  onChanged: (value) {
                    setState(() {
                      _checkboxListTile = !_checkboxListTile;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Burger Sauce'), Text('+ \$.30')],
                  ),
                  value: _checkboxListTile,
                  onChanged: (value) {
                    setState(() {
                      _checkboxListTile = !_checkboxListTile;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Chicken Patty'), Text('+ \$.70')],
                  ),
                  value: _checkboxListTile,
                  onChanged: (value) {
                    setState(() {
                      _checkboxListTile = !_checkboxListTile;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('BBQ Sauce'), Text('+ \$.50')],
                  ),
                  value: _checkboxListTile,
                  onChanged: (value) {
                    setState(() {
                      _checkboxListTile = !_checkboxListTile;
                    });
                  },
                ),
                Text(
                  "Special instructions",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You can write down here any special instructions",
                  style: TextStyle(color: kSubTitleColor),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  textAlign: TextAlign.start,
                  maxLines: 5,
                  decoration: InputDecoration(
                      hintText: "enter your need...",
                      contentPadding: EdgeInsets.only(bottom: 20, left: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kBorderColor),
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      " \$5.00",
                      style: TextStyle(
                          color: kTruckColor, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Container(
                      padding:
                      EdgeInsets.all(8.0),
                      width: context.width() /
                          1.4,
                      height: 50,
                      decoration:
                      BoxDecoration(
                        color: kMainColor,
                        border: Border.all(
                            color:
                            kMainColor),
                        borderRadius:
                        BorderRadius
                            .circular(
                            8.0),
                      ),
                      child: Center(
                          child: Text(
                            'Add To bag',
                            style: TextStyle(
                                color:
                                Colors.white,fontWeight: FontWeight.w700),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ])),
      ),
    );
  }
}
