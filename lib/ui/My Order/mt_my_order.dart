import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/ui/My%20Order/mt_order_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const TabBar(indicatorColor: kMainColor, labelColor: kMainColor, unselectedLabelColor: kSubTitleColor, tabs: [
            Tab(
              text: "All Orders",
            ),
            Tab(
              text: "Oncoming",
            ),
            Tab(
              text: "Delivered",
            ),
          ]),
          leading: const BackButton(
            color: Colors.black,
          ),
          elevation: 0,
          title: const Text(
            'My Orders',
            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
          ),
        ),
        body: TabBarView(children: [
          ListView.builder(
              itemCount: 10,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), border: Border.all(color: kDividerColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(40),
                                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/roundresturant.png"))),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Hollywood Café",
                                    style: TextStyle(color: kTitleColor),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  RichText(
                                      text: const TextSpan(
                                          text: "3 Item: ",
                                          style: TextStyle(color: kSubTitleColor),
                                          children: [TextSpan(text: " \$13.59", style: TextStyle(color: kTruckColor, fontWeight: FontWeight.w500))])),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "(25 May 2022 . 11:30 AM)",
                                    style: TextStyle(color: kSubTitleColor),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: context.width() / 2.3,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: kMainColor,
                                    border: Border.all(color: kMainColor),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        FeatherIcons.rotateCcw,
                                        color: kCircleContainer,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Reorder",
                                        style: TextStyle(color: kCircleContainer, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )),
                              Container(
                                width: context.width() / 2.3,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: kTruckColor),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Get Help",
                                    style: TextStyle(color: kTruckColor, fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }).onTap(() {
            const OrderDetailsScreen().launch(context);
          }),
          Center(
            child: Container(
              color: Colors.transparent,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset("assets/images/biram.png"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Cart Empty",
                          style: TextStyle(fontWeight: FontWeight.w700, color: kTitleColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Go a head order some items\nfrom the menue",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: kSubTitleColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: context.width() / 2,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: kMainColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FeatherIcons.plus,
                                color: kCircleContainer,
                              ),
                              Text(
                                "Add Items",
                                style: TextStyle(fontWeight: FontWeight.w500, color: kCircleContainer),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), border: Border.all(color: kDividerColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(40),
                                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/roundresturant.png"))),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Hollywood Café",
                                    style: TextStyle(color: kTitleColor),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: "3 Item: ",
                                      style: TextStyle(color: kSubTitleColor),
                                      children: [TextSpan(text: " \$13.59", style: TextStyle(color: kTruckColor, fontWeight: FontWeight.w500))],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "(25 May 2022 . 11:30 AM)",
                                    style: TextStyle(color: kSubTitleColor),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: context.width() / 2.3,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: kMainColor,
                                    border: Border.all(color: kMainColor),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        FeatherIcons.rotateCcw,
                                        color: kCircleContainer,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Reorder",
                                        style: TextStyle(color: kCircleContainer, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )),
                              Container(
                                width: context.width() / 2.3,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: kTruckColor),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Get Help",
                                    style: TextStyle(color: kTruckColor, fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
