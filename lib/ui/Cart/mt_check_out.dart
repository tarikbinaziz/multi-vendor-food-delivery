import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/Cart/mt_order_successful.dart';
import 'package:multivendor_food_delivery_app/ui/Cart/mt_shipping_address.dart';
import 'package:nb_utils/nb_utils.dart';

import 'mt_payment_method.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => CheckOutScreenState();
}

class CheckOutScreenState extends State<CheckOutScreen> {
  var value = 0;
  bool isAdded = false;

  List<String> imageName = ["assets/images/paypal.png", "assets/images/bkash.png", "assets/images/cod.png"];

  List<String> methodName = ["Paypal", "Bkash", "Cash On Delivery"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: kTitleColor),
          title: const Text(
            "Check Out",
            style: TextStyle(color: kTitleColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Shipping Address",
                        style: TextStyle(fontWeight: FontWeight.w500, color: kTitleColor),
                      ),
                      const Text(
                        "Change",
                        style: TextStyle(color: kSubTitleColor),
                      ).onTap(() {
                        const ShippingAddress().launch(context);
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: context.width(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: kCircleContainer,
                      boxShadow: [
                        BoxShadow(
                          color: kShadowSecondColor.withOpacity(0.24),
                          blurRadius: 1,
                          offset: const Offset(1, 1), // Shadow position
                        ),
                        BoxShadow(
                          color: kShadowSecondColor.withOpacity(0.24),
                          blurRadius: 1,
                          offset: const Offset(-1, -1), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Home",
                              style: TextStyle(fontWeight: FontWeight.w500, color: kTitleColor),
                            ),
                            Icon(
                              FeatherIcons.edit,
                              color: kMainColor,
                            )
                          ],
                        ),
                        const Text(
                          "New York, NY 10001-4374\nRoad NO: 17, Floor 27",
                          style: TextStyle(color: kSubTitleColor),
                        )
                      ],
                    ),
                  ).onTap(() {
                    const ShippingAddress().launch(context);
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Payment Method ",
                        style: TextStyle(fontWeight: FontWeight.w500, color: kTitleColor),
                      ),
                      const Text(
                        "Change",
                        style: TextStyle(color: kSubTitleColor),
                      ).onTap(() {
                        const PaymentMethodScreen().launch(context);
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (_, i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  imageName[i],
                                  height: 40.0,
                                  width: 50.0,
                                ),
                                title: Text(
                                  methodName[i],
                                  style: const TextStyle(color: kTitleColor),
                                ),
                                trailing: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40), color: Colors.white, border: Border.all(color: kSubTitleColor, width: 1)),
                                ),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: kDividerColor, width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                onTap: () {
                                  setState(() {
                                    isAdded = !isAdded;
                                  });
                                },
                              ),
                            ],
                          ),
                        );
                      }),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    thickness: 2,
                  ),
                  const Text(
                    "Your Order",
                    style: TextStyle(fontWeight: FontWeight.bold, color: kTitleColor, fontSize: 20.0),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total Amount",
                        style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "\$13.59",
                        style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
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
                        "Swipe To Pay",
                        style: TextStyle(color: kCircleContainer),
                      ),
                    ),
                  ).onTap(() {
                    const OrderSuccessfulScreen().launch(context);
                  }),
                ],
              )
            ],
          ),
        ));
  }
}
