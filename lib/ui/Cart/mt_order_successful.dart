import 'package:flutter/material.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

import 'mt_order_truck.dart';

class OrderSuccessfulScreen extends StatefulWidget {
  const OrderSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<OrderSuccessfulScreen> createState() => _OrderSuccessfulScreenState();
}

class _OrderSuccessfulScreenState extends State<OrderSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          width: context.width(),
          height: 50,
          decoration: BoxDecoration(
            color: kMainColor,
            border: Border.all(color: kMainColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Center(
              child: Text(
            "Track your order",
            style: TextStyle(color: kCircleContainer, fontWeight: FontWeight.w700),
          ))).onTap(() {
        const TrackOrderScreen().launch(context);
      }),
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: kTitleColor),
          elevation: 0,
          title: const Text(
            "Your Order Successfully!",
            style: TextStyle(color: kTitleColor),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Estimated Delivery Time",
              style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "35 - 50 Mins",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/ride.png",
              width: context.width(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: kDividerColor,
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Order Details",
                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Your order Number:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400)),
                Text("#s5jc-226", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Your order from:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400)),
                Text("Hollywood Café", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Delivery Addesss:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400)),
                // Text("Home\nNew York,NY 10001-4374\nRoad NO: 17, Floor 27",
                //     textAlign: TextAlign.end,
                //     style: TextStyle(
                //         color: kTitleColor, fontWeight: FontWeight.w400)),
                RichText(
                  textAlign: TextAlign.end,
                  text: const TextSpan(
                    text: "Home",
                    style: TextStyle(color: kTitleColor),
                    children: [
                      TextSpan(
                        text: "\nNew York, NY 10001-4374\nRoad NO: 17, Floor 27",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Total (incl. VAT)", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500)),
                Text("\$13.59", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: kDividerColor,
            ),
            ExpansionTile(
              tilePadding: EdgeInsets.zero,
              title: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  text: "View Details ",
                  style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: "(3 items)",
                      style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (_, i) {
                      return Container(
                        margin: const EdgeInsets.all(8.0),
                        width: context.width(),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), border: Border.all(color: kDividerColor)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(40),
                                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/glass.png"))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Empress Pear-Rosemary",
                                      style: TextStyle(color: kTitleColor),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "\$3.59",
                                          style: TextStyle(color: kSubTitleColor),
                                        ),
                                        SizedBox(
                                          width: context.width()/2.5,
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            text: "Qty:",
                                            style: TextStyle(color: kSubTitleColor),
                                            children: [
                                              TextSpan(text: "1", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
