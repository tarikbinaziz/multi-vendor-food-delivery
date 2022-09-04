import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

class OrderSuccessfulScreen extends StatefulWidget {
  const OrderSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<OrderSuccessfulScreen> createState() => _OrderSuccessfulScreenState();
}

class _OrderSuccessfulScreenState extends State<OrderSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black),
        elevation: 0,
        title: Text(
          "Your Order Successfully!",
          style: TextStyle(color: kTitleColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FeatherIcons.xCircle,
              color: kSubTitleColor,
            ),
            alignment: Alignment(2, 0),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FeatherIcons.crosshair,
              color: kTitleColor,
            ),
          ),
          //  IconButton(onPressed: () {  },icon: Icon(FeatherIcons.xCircle,color: kSubTitleColor,),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Estimated Delivery Time",
            style:
                TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "35 - 50 Mins",
            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/ride.png",
            width: context.width(),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            color: kDividerColor,
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Order Details",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your order Number:",
                  style: TextStyle(
                      color: kSubTitleColor, fontWeight: FontWeight.w400)),
              Text("#s5jc-226",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.w400)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your order from:",
                  style: TextStyle(
                      color: kSubTitleColor, fontWeight: FontWeight.w400)),
              Text("Hollywood Café",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.w400)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Delivery Addesss:",
                  style: TextStyle(
                      color: kSubTitleColor, fontWeight: FontWeight.w400)),
              // Text("Home\nNew York,NY 10001-4374\nRoad NO: 17, Floor 27",
              //     textAlign: TextAlign.end,
              //     style: TextStyle(
              //         color: kTitleColor, fontWeight: FontWeight.w400)),
              RichText(
                textAlign: TextAlign.end,
                  text: TextSpan(
                text: "Home",style: TextStyle(color: kTitleColor),
                children: [
                  TextSpan(
                  text: "\nNew York, NY 10001-4374\nRoad NO: 17, Floor 27",style: TextStyle(color: kSubTitleColor),)

                ]
              ))
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total (incl. VAT)",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.w500)),
              Text("\$13.59",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.w400)),
            ],
          ),
          SizedBox(height: 10,),
          Divider(
            thickness: 1,
            color: kDividerColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                      text: "View Details ",style: TextStyle(color: kTitleColor,fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: "(3 items)",style: TextStyle(color: kSubTitleColor,fontWeight: FontWeight.w400),)

                      ]
                  )),
              Text("\$13.59",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.w400)),
            ],
          ),
          SizedBox(height: 10,),
          Divider(
            thickness: 1,
            color: kDividerColor,
          ),
          SizedBox(height: 10,),
          SizedBox(height: 30,),
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
                    "Track your order",
                    style: TextStyle(color: kCircleContainer,fontWeight: FontWeight.w700),
                  ))),
        ]
        ),
      ),
    );
  }
}
