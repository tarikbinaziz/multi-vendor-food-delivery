import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../const/const.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const BackButton(
            color: Colors.black,
          ),
          elevation: 0,
          title: const Text(
            'Order Details',
            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                "12 May, 2022",
                style: TextStyle(color: kSubTitleColor),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: context.width() * 2,
                height: 60.0,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TimelineTile(
                        axis: TimelineAxis.horizontal,
                        alignment: TimelineAlign.manual,
                        lineXY: 0.3,
                        isFirst: true,
                        indicatorStyle: const IndicatorStyle(
                            indicator: Icon(
                              Icons.check_circle,
                              color: kMainColor,
                            ),
                            padding: EdgeInsets.only(right: 4.0)),
                        endChild: const Text(
                          'Confirmed',
                          style: TextStyle(color: kSubTitleColor),
                        ),
                        beforeLineStyle: const LineStyle(color: kMainColor, thickness: 1),
                      ),
                      TimelineTile(
                        axis: TimelineAxis.horizontal,
                        alignment: TimelineAlign.manual,
                        lineXY: 0.3,
                        indicatorStyle: const IndicatorStyle(
                            indicator: Icon(
                              Icons.check_circle,
                              color: kMainColor,
                            ),
                            color: Colors.green,
                            padding: EdgeInsets.only(right: 4.0)),
                        endChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'Processing',
                              style: TextStyle(color: kSubTitleColor),
                            ),
                          ],
                        ),
                        beforeLineStyle: const LineStyle(color: kMainColor, thickness: 1),
                      ),
                      TimelineTile(
                        axis: TimelineAxis.horizontal,
                        alignment: TimelineAlign.manual,
                        lineXY: 0.3,
                        indicatorStyle: IndicatorStyle(
                            indicator: Stack(children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: kDividerColor),
                                child: Center(
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: kMainColor),
                                  ),
                                ),
                              ),
                            ]),
                            // color: Colors.green,
                            padding: const EdgeInsets.only(right: 4.0)),
                        endChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'Picked',
                              style: TextStyle(color: kSubTitleColor),
                            ),
                          ],
                        ),
                        beforeLineStyle: const LineStyle(color: kDividerColor, thickness: 1),
                      ),
                      TimelineTile(
                        axis: TimelineAxis.horizontal,
                        alignment: TimelineAlign.manual,
                        lineXY: 0.3,
                        indicatorStyle: IndicatorStyle(
                            indicator: Stack(children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: kDividerColor),
                                child: Center(
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: kMainColor),
                                  ),
                                ),
                              ),
                            ]),
                            // color: Colors.green,
                            padding: const EdgeInsets.only(right: 4.0)),
                        endChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'Delivered',
                              style: TextStyle(color: kSubTitleColor),
                            ),
                          ],
                        ),
                        beforeLineStyle: const LineStyle(color: kDividerColor, thickness: 1),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
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
                                  width: context.width() / 2.5,
                                ),
                                RichText(
                                    text: const TextSpan(text: "Qty:", style: TextStyle(color: kSubTitleColor), children: [
                                  TextSpan(text: "1", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500)),
                                ]))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Order Details",
                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your order Number:",
                    style: TextStyle(color: kTitleColor.withOpacity(0.7), fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    "#s5jc-226",
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your order from:",
                    style: TextStyle(color: kTitleColor.withOpacity(0.7), fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    "Hollywood Café",
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Addesss:",
                    style: TextStyle(color: kTitleColor.withOpacity(0.7), fontWeight: FontWeight.w400),
                  ),
                  RichText(
                      textAlign: TextAlign.end,
                      text: const TextSpan(text: "Home", style: TextStyle(color: kTitleColor), children: [
                        TextSpan(
                          text: "\nNew York, NY 10001-4374\nRoad NO: 17, Floor 27",
                          style: TextStyle(color: kSubTitleColor),
                        )
                      ]))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  textAlign: TextAlign.end,
                  text: const TextSpan(text: "View  Details ", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700), children: [
                    TextSpan(
                      text: "(1 Item)",
                      style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
                    )
                  ])),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(text: "1x ", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500), children: [
                        TextSpan(
                          text: "Empress Pear-Rosemary",
                          style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
                        ),
                      ])),
                  const Spacer(),
                  const Text("\$3.59", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: kDividerColor,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Subtotal",
                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "VAT",
                    style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "\$0.00",
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Total (incl. VAT)",
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$3.59",
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: kDividerColor,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Paid With",
                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/paypal.png"),
                  const Text(
                    "\$13.59",
                    style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
