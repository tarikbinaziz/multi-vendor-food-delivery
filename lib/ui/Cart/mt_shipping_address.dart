import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
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
        context: context,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               // mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add New Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kTitleColor,
                        ),
                      ),
                     // Spacer(),
                      TextButton(
                          onPressed: () => finish(context),
                          child: Icon(
                            Icons.close,
                            color: kTitleColor,
                          )),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: kDividerColor,
                  ),
                  Text("Delivey Details",style: TextStyle(color: kTitleColor),),
                  
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
        elevation: 0,
        title: Text(
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
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
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
                        mainAxisSize: MainAxisSize.min,
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
                                color: kSubTitleColor,
                                size: 15,
                              )
                            ],
                          ),
                          Text(
                            "New York, NY 10001-4374\nRoad NO: 17, Floor 27",
                            style: TextStyle(color: kSubTitleColor),
                          ),
                          CheckboxListTile(
                            contentPadding: EdgeInsets.all(0),
                            controlAffinity: ListTileControlAffinity.leading,
                           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            activeColor: kMainColor,
                            title: Text(
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
            Spacer(),
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
