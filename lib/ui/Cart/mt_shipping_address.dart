import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/widgets/mt_text_field.dart';
import 'package:nb_utils/nb_utils.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  bool _checkboxListTile = false;

  void _showModalBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        builder: (builder) {
          return Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10, top: 10, bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              decoration:
                  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Add New Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kTitleColor,
                        ),
                      ),
                      // Spacer(),
                      TextButton(
                          onPressed: () => finish(context),
                          child: const Icon(
                            Icons.close,
                            color: kTitleColor,
                          )),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: kDividerColor,
                  ),
                  const Text(
                    "Delivey Details",
                    style: TextStyle(color: kTitleColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Icon(
                        FeatherIcons.mapPin,
                        size: 16,
                        color: kTruckColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "New York",
                        style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        FeatherIcons.edit,
                        size: 16,
                        color: kMainColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "We’re Missing Your Street",
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField("Enter your location", const Text("Street")),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField("Enter your apartment", const Text("Apartment")),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField("Enter your apartment", const Text("(Optional) Floor or Apt No")),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Add a Label",
                    style: TextStyle(color: kTitleColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: kMainColor),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: kMainColor.withOpacity(0.10),
                              ),
                              child: const Icon(
                                IconlyBold.home,
                                color: kMainColor,
                              ),
                            ),
                          ),
                          const Text(
                            "Home",
                            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: kTruckColor.withOpacity(0.10),
                            ),
                            child: const Icon(
                              IconlyBold.work,
                              color: kTruckColor,
                            ),
                          ),
                          const Text(
                            "Work",
                            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: kContainerLevelColor.withOpacity(0.10),
                            ),
                            child: const Icon(
                              IconlyBold.user3,
                              color: kContainerLevelColor,
                            ),
                          ),
                          const Text(
                            "Partner",
                            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: kContainerlevelAddColor.withOpacity(0.10),
                            ),
                            child: const Icon(
                              IconlyBold.plus,
                              color: kContainerlevelAddColor,
                            ),
                          ),
                          const Text(
                            "Other",
                            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
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
                        "Save",
                        style: TextStyle(color: kCircleContainer),
                      ))).onTap(() {}),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: kTitleColor),
        elevation: 0,
        title: const Text(
          "Shipping Address",
          style: TextStyle(color: kTitleColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
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
                        mainAxisSize: MainAxisSize.min,
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
                                color: kSubTitleColor,
                                size: 15,
                              )
                            ],
                          ),
                          const Text(
                            "New York, NY 10001-4374\nRoad NO: 17, Floor 27",
                            style: TextStyle(color: kSubTitleColor),
                          ),
                          CheckboxListTile(
                            contentPadding: const EdgeInsets.all(0),
                            controlAffinity: ListTileControlAffinity.leading,
                            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            activeColor: kMainColor,
                            title: const Text(
                              "Use as the shipping address",
                              style: TextStyle(color: kTitleColor),
                            ),
                            value: _checkboxListTile,
                            onChanged: (value) {
                              setState(() {
                                _checkboxListTile = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            const Spacer(),
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
                  "Add New Address",
                  style: TextStyle(color: kCircleContainer),
                ))).onTap(() {
              _showModalBottomSheet();
            })
          ],
        ),
      ),
    );
  }
}
