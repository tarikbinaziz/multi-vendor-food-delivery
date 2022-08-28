import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/ui/Home/mt_details_your_restuarant.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class FindYourResturant extends StatefulWidget {
  const FindYourResturant({Key? key}) : super(key: key);

  @override
  State<FindYourResturant> createState() => _FindYourResturantState();
}

class _FindYourResturantState extends State<FindYourResturant> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        // automaticallyImplyLeading: false,
        elevation: 0,
        title: ListTile(
          title: Text(
            "New york",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          subtitle: Text(
            "Find your restaurant",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: kSubTitleColor),
          ),
          trailing: SizedBox(
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: kSearchContainerColor.withOpacity(0.08),
                      shape: BoxShape.circle),
                  child: Icon(
                    FeatherIcons.heart,
                    color: kMainColor,
                  ),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: kSearchContainerColor.withOpacity(0.08),
                      shape: BoxShape.circle),
                  child: Icon(
                    FeatherIcons.shoppingBag,
                    color: kMainColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(FeatherIcons.search),
                      hintText: 'Search restaurant...',
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
                HorizontalList(
                    itemCount: 10,
                    itemBuilder: (_, i) {
                      return Stack(
                        children: [
                          Container(
                              width: context.width() / 1.5,
                              height: 126,
                              decoration: BoxDecoration(
                                color: kSuperOfferContainerColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                image: DecorationImage(
                                  alignment: Alignment.centerRight,
                                  image: AssetImage(
                                    "assets/images/vector.png",
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 8),
                                child: Image.asset(
                                  "assets/images/barger.png",
                                  alignment: Alignment.centerRight,
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Supper Offer\n15% Off!",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 84,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: kMiniContainerColor),
                                  child: Center(
                                      child: Text(
                                    "Code | BX205",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                HorizontalList(
                  itemCount: 10,
                  itemBuilder: (_,i){
                    return Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.all(Radius.circular(20)),
                          shape: BoxShape.circle,
                          border: Border.all(color: kButtonFBGColor, width: 2)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Image.asset("assets/images/pizza.png"),
                            Text(
                              "Pizza",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "75 Places",
                              style: TextStyle(fontWeight: FontWeight.w400,color: kSubTitleColor,fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
            Text(
              "Nearby Restaurant",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
                SizedBox(
                  height: 10,
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
                              "Hollywood Café",
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
                                  color: kMainColor,
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
                                  color: kTruckColor,
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
                          ],
                        ),
                      );
                    }).onTap(()=> DetailsRestaurant().launch(context)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Popular Restaurants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
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
                                    image: AssetImage("assets/images/resturent.png"),
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
                                  color: kMainColor,
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
                                  color: kTruckColor,
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
                          ],
                        ),
                      );
                    }),
                Text(
                  "All Restaurants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: 10,
                   shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_,i){
                  return  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: context.width()/1.1,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius:
                            BorderRadius.all(Radius.circular(6)),
                            image: DecorationImage(
                                image: AssetImage("assets/images/heaven_kitchen.png"),
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
                          "The Heaven’s Kitchen",
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
                              color: kMainColor,
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
                              color: kTruckColor,
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
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  );
                })




              ]),
        ),
      ),
    ));
  }
}
