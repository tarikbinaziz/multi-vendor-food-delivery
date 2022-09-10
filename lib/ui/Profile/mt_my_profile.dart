import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:multivendor_food_delivery_app/ui/Profile/mt_update_profile.dart';
import 'package:multivendor_food_delivery_app/ui/widgets/mt_cart_button.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          ),
          elevation: 0,
          title: Text(
            'My Profile',
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
                    Stack(alignment: Alignment.bottomRight, children: [
                      Container(
                        padding: EdgeInsets.all(40),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/profile.png"))),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(30),
                            color: kContainerCameraColor),
                        child: Icon(
                          FeatherIcons.camera,
                          size: 10,
                        ),
                      ),
                    ]),
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
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "shaidulislamma@gmail.com",
                            style: TextStyle(color: kSubTitleColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Full Name",
                  style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFDEDEE0))),
                      hintText: "Enter your full name",
                      hintStyle: TextStyle(color: kSubTitleColor),
                      prefixIcon: Icon(
                        FeatherIcons.user,
                        color: kMainColor,
                      )),
                  textFieldType: TextFieldType.NAME,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Mobile Number",
                  style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFDEDEE0))),
                      hintText: "Enter your phone number",
                      hintStyle: TextStyle(color: kSubTitleColor),
                      prefixIcon: Icon(
                        FeatherIcons.phone,
                        color: kMainColor,
                      )),
                  textFieldType: TextFieldType.NUMBER,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Email Adderss",
                  style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFDEDEE0))),
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(color: kSubTitleColor),
                      prefixIcon: Icon(
                        IconlyLight.message,
                        color: kMainColor,
                      )),
                  textFieldType: TextFieldType.EMAIL,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Confirm Password",
                  style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 15,),
                AppTextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFDEDEE0))),
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(color: kSubTitleColor),
                    prefixIcon: Icon(
                      IconlyLight.lock,
                      color: kMainColor,
                    ),
                  ),
                  textFieldType: TextFieldType.PASSWORD,
                ),
                SizedBox(height: 140,),

                CartButton("Edit Profile").onTap((){UpdateProfileScreen().launch(context);}),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
