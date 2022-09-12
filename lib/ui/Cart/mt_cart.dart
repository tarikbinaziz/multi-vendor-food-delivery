import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/Cart/mt_check_out.dart';
import 'package:nb_utils/nb_utils.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          iconTheme: const IconThemeData(color: kTitleColor),
          backgroundColor: Colors.white,
          title: const Text(
            "Cart",
            style: TextStyle(color: kTitleColor),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: Image.asset("assets/images/cupon.png"),
                    hintText: "Coupon code",
                    hintStyle: const TextStyle(color: kSubTitleColor),
                    border: OutlineInputBorder(borderSide: const BorderSide(color: kDividerColor, width: 1), borderRadius: BorderRadius.circular(6.0)),
                    suffixIcon: Container(
                      width: 100,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: kTruckColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          )),
                      child: const Center(
                        child: Text(
                          "Apply",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
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
                  padding: const EdgeInsets.all(14.0),
                  width: context.width(),
                  // height: 50,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    border: Border.all(color: kMainColor),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                      child: Text(
                    "Check Out",
                    style: TextStyle(color: kCircleContainer),
                  ))).onTap(() {
                const CheckOutScreen().launch(context);
              })
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return Slidable(
                      key: const ValueKey(1),
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        //   dismissible: DismissiblePane(onDismissed: () => toast('Item Deleted')),
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(shape: BoxShape.circle, color: kMiniContainerColor.withOpacity(0.1)),
                            child: const Icon(
                              FeatherIcons.heart,
                              color: kMainColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(shape: BoxShape.circle, color: kMiniContainerColor.withOpacity(0.1)),
                            child: const Icon(
                              FeatherIcons.trash2,
                              color: kMainColor,
                            ),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: kBorderColor.withOpacity(0.4))),
                          child: Row(children: [
                            Container(
                                width: 80,
                                height: 74,
                                decoration: const BoxDecoration(
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
                                  const Text(
                                    "Chicken burger first delivery",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$5.00",
                                        style: TextStyle(color: kTruckColor, fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        width: 70,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 25.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kButtonFBGColor, width: 1)),
                                              child: const Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Icon(
                                                  FeatherIcons.minus,
                                                  color: kSubTitleColor,
                                                ),
                                              ),
                                            ).onTap(() {
                                              setState(() {
                                                value > 1 ? value-- : value = 1;
                                              });
                                            }),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Text(
                                              value.toString(),
                                              style: const TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kDividerColor, width: 1)),
                                              child: const Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Icon(
                                                  FeatherIcons.plus,
                                                  color: kSubTitleColor,
                                                ),
                                              ),
                                            ).onTap(() {
                                              setState(() {
                                                value++;
                                              });
                                            }),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
