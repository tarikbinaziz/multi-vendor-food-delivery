import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/Cart/mt_shipping_address.dart';
import 'package:nb_utils/nb_utils.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => CheckOutScreenState();
}

class CheckOutScreenState extends State<CheckOutScreen> {
  var value = 0;
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Check Out",
            style: TextStyle(color: kTitleColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Address",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: kTitleColor),
                    ),
                    Text(
                      "Change",
                      style: TextStyle(color: kSubTitleColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: context.width(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: kCircleContainer,
                    boxShadow: [
                      BoxShadow(
                        color: kShadowSecondColor.withOpacity(0.24),
                        blurRadius: 1,
                        offset: Offset(1, 1), // Shadow position
                      ),
                      BoxShadow(
                        color: kShadowSecondColor.withOpacity(0.24),
                        blurRadius: 1,
                        offset: Offset(-1, -1), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: kTitleColor),
                          ),
                          Icon(
                            FeatherIcons.edit,
                            color: kMainColor,
                          )
                        ],
                      ),
                      Text(
                        "New York, NY 10001-4374\nRoad NO: 17, Floor 27",
                        style: TextStyle(color: kSubTitleColor),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Method ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: kTitleColor),
                    ),
                    Text(
                      "Change",
                      style: TextStyle(color: kSubTitleColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset("assets/images/paypal.png"),
                              title: Text(
                                "Paypal",
                                style: TextStyle(color: kTitleColor),
                              ),
                              trailing: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: kSubTitleColor, width: 1)),
                              ),
                              shape: RoundedRectangleBorder(
                                side:
                                    BorderSide(color: kDividerColor, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              onTap: () {
                                setState(() {
                                  isAdded = !isAdded;
                                });
                              },
                            ).visible(!isAdded),
                            ListTile(
                              leading: Image.asset("assets/images/paypal.png"),
                              title: Text(
                                "Paypal",
                                style: TextStyle(color: kTitleColor),
                              ),
                              trailing: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: kMainColor, width: 1)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kMainColor,
                                    ),
                                  ),
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: kMainColor, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              // onTap: (){
                              //   setState(() {
                              //     isAdded=!isAdded;
                              //   });
                              // },
                            ).visible(isAdded),
                          ],
                        ),
                      );
                    }),
                Text(
                  "Your Order",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: kTitleColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Item",
                      style: TextStyle(color: kSubTitleColor),
                    ),
                    Text(
                      "03",
                      style: TextStyle(color: kTitleColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(color: kSubTitleColor),
                    ),
                    Text(
                      "\$13.59",
                      style: TextStyle(color: kTitleColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Fee",
                      style: TextStyle(color: kSubTitleColor),
                    ),
                    Text(
                      "Free",
                      style: TextStyle(color: kTitleColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "VAT",
                      style: TextStyle(color: kSubTitleColor),
                    ),
                    Text(
                      "\$0.00",
                      style: TextStyle(color: kTitleColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Amount",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$13.59",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.all(8.0),
                    width: context.width(),
                    height: 50,
                    decoration: BoxDecoration(
                      color: kMainColor,
                      border: Border.all(color: kMainColor),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                        child: Text(
                      "Swipe To Pay",
                      style: TextStyle(color: kCircleContainer),
                    ))).onTap((){
                      ShippingAddress().launch(context);
                })
              ],
            ),
          ),
        ));
  }
}
