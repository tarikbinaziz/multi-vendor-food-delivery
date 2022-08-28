import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/ui/views/Location/mt_add_new_address.dart';
import 'package:multivendor_food_delivery_app/ui/Home/mt_find_your_resturant.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        builder: (builder) {
          return Container(
            color: Colors.transparent,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    FeatherIcons.send,
                                    color: kMainColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Use my current location",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kTitleColor,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ],
                              ),
                              Spacer(),
                              TextButton(

                                  onPressed: () => finish(context),
                              child: Icon(Icons.close,color: kTitleColor,)),
                            ],
                          ),
                        ),
                        SizedBox(
                           height: 220,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (_, i) {
                                return Card(
                                  elevation: 2,
                                  shadowColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0)),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 100.0,
                                        width: context.width(),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10.0),
                                              topLeft: Radius.circular(10.0),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/color_map.png",
                                              ),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      ListTile(
                                        title: Text(
                                          "New York",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black),
                                        ),
                                        subtitle: Text(
                                          "Middleton, Tennessee(TN), 38052",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: kSubTitleColor),
                                        ),
                                        trailing: Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: kSearchContainerColor
                                                  .withOpacity(0.08),
                                              shape: BoxShape.circle),
                                          child: Icon(
                                            FeatherIcons.edit,
                                            color: kMainColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>AddNewAddress()));
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: kTitleColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Add New Address",
                                maxLines: 2,
                                style: TextStyle(
                                    color: kTitleColor,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 0.0,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: ListTile(
            title: Text(
              "Hi Shaidul Islam",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            subtitle: Text(
              "It’s lunch time!",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: kSubTitleColor),
            ),
            trailing: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: kSearchContainerColor.withOpacity(0.08),
                  shape: BoxShape.circle),
              child: Icon(
                FeatherIcons.search,
                color: kMainColor,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FeatherIcons.home,
                color: kMainColor,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.heart,
                  color: Colors.black,
                ),
                label: "heart"),
            BottomNavigationBarItem(
                icon: Container(
                  width: 50,
                  height: 50,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: kMainColor),
                  child: Icon(FeatherIcons.shoppingBag),
                ),
                label: "bag"),
            BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.file,
                  color: Colors.black,
                ),
                label: "documnets"),
            BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.user,
                  color: Colors.black,
                ),
                label: "user"),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage("assets/images/map_image.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        _modalBottomSheetMenu();
                      },
                      child: ListTile(
                        leading: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: kMiniContainerColor.withOpacity(0.2),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.location_on,
                            color: kMainColor,
                          ),
                        ),
                        title: Text(
                          "Current location",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        subtitle: Text(
                          "Middleton, Tennessee(TN), 38052",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: kSubTitleColor),
                        ),
                        trailing: Icon(
                          FeatherIcons.arrowRight,
                          color: kSubTitleColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: kPickUpContainerColor,
                      // width: MediaQuery.of(context).size.width/2,
                      width: 165,
                      height: 114,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Image.asset(
                            "assets/images/pick up.png",
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 17.0,left: 10),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pick Up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "Lorem ipsum dolor\nsit amet\nnsectetur.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: kSubTitleColor),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        color: kOfferContainerColor,

                        height: 114,
                        // width: MediaQuery.of(context).size.width/2,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Image.asset(
                              "assets/images/offer.png",
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0,top: 17),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Offer",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Lorem ipsum\n dolor sit amet\nnsectetur.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: kSubTitleColor),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: kFindResturantContainerColor,
                  // width: MediaQuery.of(context).size.width/2,
                  width: double.infinity,
                  height: 114,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset(
                        "assets/images/find_resturant.png",
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 25),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Find restaurant",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 20),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                "Lorem ipsum dolor sit amet\nnsectetur.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: kSubTitleColor),
                              ),
                            ],
                          ),
                        ),
                      ).onTap(() => const FindYourResturant().launch(context))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Nearby restaurant",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                HorizontalList(
                  spacing: 15,
                    itemCount: 10,
                    itemBuilder: (_, i) {
                      return Container(
                        width: context.width() / 1.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: context.width() / 1.6,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/rst1.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: kMiniContainerColor),
                                      child: Center(
                                          child: Text(
                                        "50 min",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      )),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 0.5),
                                            //  borderRadius: BorderRadius.all(Radius.circular(20)),
                                            shape: BoxShape.circle,
                                            color: kCircleContainer
                                                .withOpacity(0.5)),
                                        child: Center(
                                            child: Icon(
                                          FeatherIcons.heart,
                                          color: Colors.white,
                                          size: 9,
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Restaurant Name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1901 Thornridge Cir. Shiloh, Ha...",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(
                                  FeatherIcons.truck,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Free delivery",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  FeatherIcons.star,
                                  size: 8,
                                  color: kStarColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "5.0 (100+)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(width: 20,)
                          ],

                        ),

                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
