import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:multivendor_food_delivery_app/ui/Profile/mt_about_us.dart';
import 'package:multivendor_food_delivery_app/ui/Profile/mt_my_profile.dart';
import 'package:multivendor_food_delivery_app/ui/Profile/mt_notification.dart';
import 'package:multivendor_food_delivery_app/ui/Profile/mt_privacy_policy.dart';
import 'package:multivendor_food_delivery_app/ui/Profile/mt_support.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/profile.png"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shaidul Islam",
                          style: TextStyle(
                              color: kTitleColor, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "shaidulislamma@gmail.com",
                          style: TextStyle(color: kSubTitleColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Text(
                "My Account",
                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: Icon(
                  IconlyLight.profile,
                  color: kMainColor,
                ),
                title: Text(
                  "My Profile",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ).onTap((){MyProfileScreen().launch(context);}),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: Icon(
                  IconlyLight.document,
                  color: kMainColor,
                ),
                title: Text(
                  "My Orders",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: Icon(
                  IconlyLight.ticket,
                  color: kMainColor,
                ),
                title: Text(
                  "Promocode",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Notifications",
                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
              ).onTap((){NotificationScreen().launch(context);}),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: Icon(
                  IconlyLight.notification,
                  color: kMainColor,
                ),
                title: Text(
                  "Push Notifications",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: SizedBox(
                  width: 37,
                  child: FlutterSwitch(
                    width: 37.0,
                    height: 20.0,
                    value: status,
                    toggleSize: 15,
                    activeColor: kTruckColor,
                    padding: 2,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: Icon(
                  IconlyLight.notification,
                  color: kMainColor,
                ),
                title: Text(
                  "Promotional Notifications",
                  style: TextStyle(color: kTitleColor,fontWeight: FontWeight.w400),
                ),
                trailing: SizedBox(
                  width: 37,
                  child: FlutterSwitch(
                    width: 37.0,
                    height: 20.0,
                    value: status,
                    toggleSize: 15,
                    activeColor: kTruckColor,
                    padding: 2,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "More",
                style: TextStyle(color: kTitleColor,fontWeight: FontWeight.w700),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: Icon(
                  IconlyLight.chat,
                  color: kMainColor,
                ),
                title: Text(
                  "Support",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ).onTap((){SupportScreen().launch(context);}),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: Icon(
                  IconlyLight.dangerCircle,
                  color: kMainColor,
                ),
                title: Text(
                  "About us",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ).onTap((){AboutusScreen().launch(context);}),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: Icon(
                  IconlyLight.shieldDone,
                  color: kMainColor,
                ),
                title: Text(
                  "Privacy & Security",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ).onTap((){PrivacyScreen().launch(context);}),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: Icon(
                  IconlyLight.logout,
                  color: kMainColor,
                ),
                title: Text(
                  "Log out",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
