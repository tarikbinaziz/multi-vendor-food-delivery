import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        title: const Text(
          "Track Your Order",
          style: TextStyle(color: kTitleColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.xCircle,
              color: kSubTitleColor,
            ),
            alignment: const Alignment(2, 0),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.crosshair,
              color: kTitleColor,
            ),
          ),
          //  IconButton(onPressed: () {  },icon: Icon(FeatherIcons.xCircle,color: kSubTitleColor,),),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: context.height(),
          ),
          Container(
            height: context.height() / 2.2,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: kTrackContainerColor),
            child: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: kContainerManColor),
                    child: Image.asset("assets/images/men.png")),
                title: Text(
                  "Shaidul Islma",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: kCircleContainer),
                ),
                subtitle: Text(
                  "Food Courier",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: kCircleContainer.withOpacity(0.8)),
                ),
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: kStarColor,
                    ),
                    Text(
                      " 5.0",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kCircleContainer),
                    ),
                    Text(
                      " (27)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: kCircleContainer.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: context.height() / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: kCircleContainer),
            child: Padding(
              padding:  EdgeInsets.all(15),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kTruckColor.withOpacity(0.10),
                      ),
                      child: Icon(
                        IconlyBold.location,
                        color: kTruckColor,
                      ),
                    ),
                    title: Text(
                      "Addrass",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kSubTitleColor),
                    ),
                    subtitle: Text(
                      "421 Duke street, M54ader",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kTitleColor),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kTruckColor.withOpacity(0.10),
                      ),
                      child: Icon(
                        IconlyBold.timeCircle,
                        color: kMainColor,
                      ),
                    ),
                    title: Text(
                      "Delivery Time",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kSubTitleColor),
                    ),
                    subtitle: Text(
                      "20-30 minutes",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kTitleColor),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kContainerLevelColor.withOpacity(0.10),
                      ),
                      child: Icon(
                        IconlyBold.shieldDone,
                        color: kContainerLevelColor,
                      ),
                    ),
                    title: Text(
                      "Order#",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kSubTitleColor),
                    ),
                    subtitle: Text(
                      "15462",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kTitleColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
