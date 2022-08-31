import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Cart",
            style: TextStyle(color: kTitleColor),
          ),
        ),
        body: Column(
          children: [
            Slidable(
              key: const ValueKey(1),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () => toast('Item Deleted')),
                children:  [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color:kMiniContainerColor.withOpacity(0.1)),
                    child: Icon(
                      FeatherIcons.heart,
                      color: kMainColor,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,color:kMiniContainerColor.withOpacity(0.1)),
                    child: Icon(
                      FeatherIcons.trash2,
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border:
                            Border.all(color: kBorderColor.withOpacity(0.4))),
                        child: Row(children: [
                          Container(
                              width: 80,
                              height: 74,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/bigburger.png",
                                    ),
                                    fit: BoxFit.cover),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chicken burger first delivery",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$5.00",
                                      style: TextStyle(
                                          color: kTruckColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: kButtonFBGColor,
                                                    width: 1)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Icon(
                                                FeatherIcons.minus,
                                                color: kSubTitleColor,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                color: kTitleColor,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: kDividerColor,
                                                    width: 1)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Icon(
                                                FeatherIcons.plus,
                                                color: kSubTitleColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
