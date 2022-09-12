import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:multivendor_food_delivery_app/ui/My%20Order/mt_my_order.dart';
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
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        title: const Text(
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
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
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
              const SizedBox(height: 10,),
              const Text(
                "My Account",
                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                onTap: ()=> const MyProfileScreen().launch(context),
                leading: const Icon(
                  IconlyLight.profile,
                  color: kMainColor,
                ),
                title: const Text(
                  "My Profile",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: const Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                )
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                onTap: ()=> const MyOrderScreen().launch(context),
                leading: const Icon(
                  IconlyLight.document,
                  color: kMainColor,
                ),
                title: const Text(
                  "My Orders",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: const Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ),
              ),
              const ListTile(
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
              const SizedBox(height: 10,),
              const Text(
                "Notifications",
                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
              ).onTap((){const NotificationScreen().launch(context);}),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: const Icon(
                  IconlyLight.notification,
                  color: kMainColor,
                ),
                title: const Text(
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
                leading: const Icon(
                  IconlyLight.notification,
                  color: kMainColor,
                ),
                title: const Text(
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
              const SizedBox(height: 10,),
              const Text(
                "More",
                style: TextStyle(color: kTitleColor,fontWeight: FontWeight.w700),
              ),
              ListTile(
                onTap: ()=> const SupportScreen().launch(context),
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: const Icon(
                  IconlyLight.chat,
                  color: kMainColor,
                ),
                title: const Text(
                  "Support",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: const Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                onTap: ()=> const AboutusScreen().launch(context),
                leading: const Icon(
                  IconlyLight.dangerCircle,
                  color: kMainColor,
                ),
                title: const Text(
                  "About us",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: const Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ),
              ),
              ListTile(
                onTap: ()=> const PrivacyScreen().launch(context),
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                leading: const Icon(
                  IconlyLight.shieldDone,
                  color: kMainColor,
                ),
                title: const Text(
                  "Privacy & Security",
                  style: TextStyle(color: kTitleColor),
                ),
                trailing: const Icon(
                  IconlyLight.arrowRight2,
                  color: kTitleColor,
                ),
              ),
              const ListTile(
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
