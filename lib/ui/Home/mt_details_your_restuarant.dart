// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:multivendor_food_delivery_app/ui/Cart/mt_cart.dart';
import 'package:multivendor_food_delivery_app/ui/Home/mt_items_details.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../const/const.dart';

class DetailsRestaurant extends StatefulWidget {
  const DetailsRestaurant({Key? key}) : super(key: key);

  @override
  State<DetailsRestaurant> createState() => _DetailsRestaurantState();
}

class _DetailsRestaurantState extends State<DetailsRestaurant> {
  var rating = 2.0;
  bool isExpanded = false;
  bool isAdded = false;
  int value = 0;
  String selectedCat = 'Popular';
  final popularKey = GlobalKey();
  List<GlobalKey> allKey = [];

  void makeKey() {
    for (var cat in foodCategory) {
      cat = GlobalKey();
      allKey.add(cat);
    }
  }

  List<dynamic> foodCategory = ['Popular', 'Pizza', 'Pasta & Rice', 'Burger', 'Drink'];

  @override
  void initState() {
    makeKey();
    super.initState();
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        builder: (builder) {
          return Container(
            color: Colors.transparent,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.only(topLeft: const Radius.circular(10.0), topRight: const Radius.circular(10.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Write a Review",
                            style: TextStyle(fontWeight: FontWeight.bold, color: kTitleColor, overflow: TextOverflow.ellipsis),
                          ),
                          Spacer(),
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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset("assets/images/biram.png"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Haven’t Purchased this Product?",
                        style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        comment,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: context.width(),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: kMainColor),
                        child: Center(
                            child: Text(
                          "Continue Shopping",
                          style: TextStyle(fontWeight: FontWeight.w500, color: kCircleContainer),
                        )),
                      ).onTap(() => _shoppingBottomSheetMenu())
                    ],
                  ),
                )),
          );
        });
  }

  void _shoppingBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        builder: (builder) {
          return DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.5,
              maxChildSize: 1,
              builder: (_,controller){
            return SingleChildScrollView(
              controller: controller,
              child: Container(
                color: Colors.transparent,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.only(topLeft: const Radius.circular(10.0), topRight: const Radius.circular(10.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Write a Review",
                                style: TextStyle(fontWeight: FontWeight.bold, color: kTitleColor, overflow: TextOverflow.ellipsis),
                              ),
                              Spacer(),
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
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Enter Your Opinion",
                            style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RatingBarWidget(
                              rating: 3,
                              itemCount: 5,
                              size: 35,
                              activeColor: kStarColor,
                              inActiveColor: kStarColor,
                              onRatingChanged: (value) {
                                setState(() {
                                  value = rating;
                                });
                              }),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Enter Your Opinion",
                            style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(border: Border.all(color: kCircleContainer)),
                            child: TextField(
                              textAlign: TextAlign.start,
                              maxLines: 5,
                              decoration: InputDecoration(
                                  hintText: "Message...",
                                  contentPadding: EdgeInsets.only(bottom: 20, left: 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kDividerColor,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: context.width(),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: kMainColor),
                            child: Center(
                                child: Text(
                                  "Apply",
                                  style: TextStyle(fontWeight: FontWeight.w500, color: kCircleContainer),
                                )),
                          )
                        ],
                      ),
                    )),
              ),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                width: context.width(),
                height: 50,
                decoration: BoxDecoration(
                  color: kMainColor,
                  border: Border.all(color: kMainColor),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'View your cart (2 Items)',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "\$5.50",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ).onTap(() => CartScreen().launch(context)),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        image: DecorationImage(image: AssetImage("assets/images/bigrestaurant.png"), fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(shape: BoxShape.circle, color: kArrowContainerColor),
                              child: Icon(
                                FeatherIcons.arrowLeft,
                                color: Colors.black,
                              ),
                            ).onTap(() => finish(context)),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: kArrowContainerColor),
                                  child: Icon(
                                    IconlyLight.heart,
                                    color: kMainColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: kArrowContainerColor),
                                  child: Icon(
                                    FeatherIcons.share2,
                                    color: kTruckColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text(
                        "Hollywood Café",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kTitleColor),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "3.3km away | \$ 15 Minimum",
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: kSubTitleColor),
                          ),
                          Row(
                            children: [
                              Text(
                                "Map Direction",
                                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: kTitleColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(color: kMainColor, shape: BoxShape.circle),
                                child: Icon(
                                  FeatherIcons.send,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          RatingBarWidget(
                              rating: 4,
                              size: 15,
                              itemCount: 5,
                              activeColor: kStarColor,
                              inActiveColor: kStarColor.withOpacity(0.3),
                              onRatingChanged: (value) {
                                setState(() {
                                  rating = value;
                                });
                              }),
                          Text(
                            "5.0 ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "(100+ ratings)",
                            style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            FeatherIcons.clock,
                            color: kMainColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Delivery: 25 - 30 mins",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ExpansionTile(
                        collapsedIconColor: kTitleColor,
                        collapsedTextColor: kTitleColor,
                        tilePadding: EdgeInsets.zero,
                        onExpansionChanged: (val) {
                          setState(() {
                            isExpanded = val;
                          });
                        },
                        trailing: Icon(
                          isExpanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
                          color: kTitleColor,
                        ),
                        title: Text(
                          "About Us",
                          style: TextStyle(
                            color: kTitleColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        children: [
                          Text(
                            description,
                            maxLines: 8,
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      ExpansionTile(
                        collapsedIconColor: kTitleColor,
                        collapsedTextColor: kTitleColor,
                        tilePadding: EdgeInsets.zero,
                        onExpansionChanged: (val) {
                          setState(() {
                            isExpanded = val;
                          });
                        },
                        trailing: Icon(
                          isExpanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
                          color: kTitleColor,
                        ),
                        title: Text(
                          "Open - Closed",
                          style: TextStyle(
                            color: kTitleColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Monday",
                                      style: TextStyle(
                                        color: kSubTitleColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "10:00 AM - 10:00 PM",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Tuesday",
                                      style: TextStyle(
                                        color: kSubTitleColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "10:00 AM - 10:00 PM",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Wednesday",
                                      style: TextStyle(
                                        color: kSubTitleColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "10:00 AM - 10:00 PM",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Thursday",
                                      style: TextStyle(
                                        color: kSubTitleColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "10:00 AM - 10:00 PM",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Friday",
                                      style: TextStyle(
                                        color: kSubTitleColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "10:00 AM - 10:00 PM",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Saturday",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Closed",
                                      style: TextStyle(fontWeight: FontWeight.w400, color: kMainColor),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Sunday",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Closed",
                                      style: TextStyle(fontWeight: FontWeight.w400, color: kMainColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      ExpansionTile(
                        collapsedIconColor: kTitleColor,
                        collapsedTextColor: kTitleColor,
                        tilePadding: EdgeInsets.zero,
                        onExpansionChanged: (val) {
                          setState(() {
                            isExpanded = val;
                          });
                        },
                        childrenPadding: EdgeInsets.all(4.0),
                        trailing: Icon(
                          isExpanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
                          color: kTitleColor,
                        ),
                        title: Text(
                          "Ratings",
                          style: TextStyle(
                            color: kTitleColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(12.0),
                                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kContainerBorderColor.withOpacity(0.3))),
                                        child: Center(
                                            child: Text(
                                          "4.9",
                                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25, color: kMainColor),
                                        )),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        "Total 22 \nreviews",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          LinearPercentIndicator(
                                            width: 130,
                                            lineHeight: 8.0,
                                            percent: 0.9,
                                            progressColor: kMainColor,
                                            backgroundColor: kBorderColor,
                                            barRadius: const Radius.circular(15),
                                          ),
                                          const SizedBox(
                                              width: 30,
                                              child: Center(
                                                  child: Text(
                                                '30',
                                              ))),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          LinearPercentIndicator(
                                            width: 130,
                                            lineHeight: 8.0,
                                            percent: 0.7,
                                            progressColor: kMainColor,
                                            backgroundColor: kBorderColor,
                                            barRadius: const Radius.circular(15),
                                          ),
                                          const SizedBox(width: 30, child: Center(child: Text('25'))),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          LinearPercentIndicator(
                                            width: 130,
                                            lineHeight: 8.0,
                                            percent: 0.8,
                                            progressColor: kMainColor,
                                            backgroundColor: kBorderColor,
                                            barRadius: const Radius.circular(15),
                                          ),
                                          const SizedBox(width: 30, child: Center(child: Text('20'))),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          LinearPercentIndicator(
                                            width: 130,
                                            lineHeight: 8.0,
                                            percent: 0.3,
                                            progressColor: kMainColor,
                                            backgroundColor: kBorderColor,
                                            barRadius: const Radius.circular(15),
                                          ),
                                          const SizedBox(width: 30, child: Center(child: Text('10'))),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.star, size: 18, color: kStarColor),
                                          LinearPercentIndicator(
                                            width: 130,
                                            lineHeight: 8.0,
                                            percent: 0.25,
                                            progressColor: kMainColor,
                                            backgroundColor: kBorderColor,
                                            barRadius: const Radius.circular(15),
                                          ),
                                          const SizedBox(width: 30, child: Center(child: Text('6'))),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 330,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: kDividerColor),
                                ),
                                child: Center(
                                  child: Text(
                                    "Write a Review",
                                    style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                                  ),
                                ),
                              ).onTap(() => _modalBottomSheetMenu()),
                              SizedBox(
                                height: 15,
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 10.0),
                                    padding: const EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: kDividerColor)),
                                    child: Column(
                                      children: [
                                        ListTile(
                                    contentPadding: EdgeInsets.zero,
                                          leading: CircleAvatar(
                                            backgroundImage: AssetImage("assets/images/person.png"),
                                          ),
                                          title:Text(
                                            'Abdul Korim',
                                            style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                                          ),
                                          subtitle: RatingBarWidget(
                                              rating: 4,
                                              itemCount: 5,
                                              size: 16,
                                              activeColor: kStarColor,
                                              inActiveColor: kStarColor,
                                              onRatingChanged: (value) {
                                                setState(() {
                                                  value = rating;
                                                });
                                              }),
                                          trailing: Text(
                                            "5, June 2022",
                                            style: TextStyle(color: kSubTitleColor),
                                          )
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          comment,
                                          style: TextStyle(fontWeight: FontWeight.w500, color: kSubTitleColor),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      StickyHeader(
                        header: Container(
                          color: Colors.white,
                          child: HorizontalList(
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: selectedCat == foodCategory[index] ? kMainColor : Colors.white),
                                  ),
                                ),
                                child: Text(
                                  foodCategory[index],
                                  style: TextStyle(fontSize: 18),
                                ).onTap(() {
                                  setState(() {
                                    selectedCat = foodCategory[index];
                                    Scrollable.ensureVisible(allKey[index].currentContext!);
                                  });
                                }),
                              );
                            },
                            itemCount: foodCategory.length,
                          ),
                        ),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Popular",
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Most ordered right now",
                              style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor),
                            ),
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: foodCategory.length,
                                itemBuilder: (_, i) {
                                  return Column(
                                    key: allKey[i],
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                                        child: Text(
                                          foodCategory[i],
                                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                                        ).visible(foodCategory[i] != 'Popular'),
                                      ),
                                      GridView.count(
                                        crossAxisCount: 2,
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        childAspectRatio: 0.7,
                                        crossAxisSpacing: 10.0,
                                        mainAxisSpacing: 10.0,
                                        children: List.generate(
                                            4,
                                            (index) => Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10.0), border: Border.all(color: kBorderColor.withOpacity(0.4))),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Stack(
                                                        alignment: AlignmentDirectional.topEnd,
                                                        children: [
                                                          Container(
                                                            width: context.width() / 1.8,
                                                            height: 100,
                                                            decoration: const BoxDecoration(
                                                              color: Colors.amberAccent,
                                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                                                              image: DecorationImage(image: AssetImage("assets/images/rice.png"), fit: BoxFit.cover),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.all(4.0),
                                                            height: 25.0,
                                                            width: 25.0,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(color: Colors.white, width: 0.5),
                                                                //  borderRadius: BorderRadius.all(Radius.circular(20)),
                                                                shape: BoxShape.circle,
                                                                color: Colors.white),
                                                            child: const Center(
                                                                child: Icon(
                                                              IconlyLight.heart,
                                                              color: kMainColor,
                                                              size: 18,
                                                            )),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              "Fried Brown Rice with Kimchi",
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                              "\$5.00",
                                                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: kTruckColor),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                              padding: EdgeInsets.all(8.0),
                                                              width: context.width() / 1.8,
                                                              decoration: BoxDecoration(
                                                                border: Border.all(color: kMainColor),
                                                                borderRadius: BorderRadius.circular(8.0),
                                                              ),
                                                              child: Center(
                                                                  child: Text(
                                                                'Add To Cart',
                                                                style: TextStyle(color: kMainColor),
                                                              )),
                                                            ).onTap(() {
                                                              setState(() {
                                                                isAdded = !isAdded;
                                                              });
                                                            }).visible(!isAdded),
                                                            Container(
                                                              padding: EdgeInsets.all(8.0),
                                                              width: context.width() / 1.8,
                                                              decoration: BoxDecoration(
                                                                color: kMainColor,
                                                                borderRadius: BorderRadius.circular(8.0),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                children: [
                                                                  Icon(
                                                                    FeatherIcons.minus,
                                                                    color: Colors.white,
                                                                  ).onTap(() {
                                                                    setState(() {
                                                                      value > 1 ? value-- : value = 1;
                                                                    });
                                                                  }),
                                                                  Text(
                                                                    '$value in bag',
                                                                    style: TextStyle(color: Colors.white),
                                                                  ),
                                                                  Icon(
                                                                    FeatherIcons.plus,
                                                                    color: Colors.white,
                                                                  ).onTap(() {
                                                                    setState(() {
                                                                      value++;
                                                                    });
                                                                  }),
                                                                ],
                                                              ),
                                                            ).visible(isAdded),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).onTap(() => ItemDtailsScreen().launch(context))),
                                      ).visible(foodCategory[i] == 'Popular'),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemCount: 3,
                                          itemBuilder: (_, index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(bottom: 8.0),
                                              child: Container(
                                                padding: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10.0), border: Border.all(color: kBorderColor.withOpacity(0.4))),
                                                child: Row(children: [
                                                  Container(
                                                      width: 80,
                                                      height: 80,
                                                      decoration: BoxDecoration(
                                                        color: Colors.amberAccent,
                                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                              "assets/images/small_pizza.png",
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
                                                        Text(
                                                          "Cauliflower Pizza Crust",
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 4,
                                                        ),
                                                        Text(
                                                          "\$5.00",
                                                          style: TextStyle(color: kTruckColor),
                                                        ),
                                                        SizedBox(
                                                          height: 4,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Container(
                                                              padding: EdgeInsets.all(8.0),
                                                              width: context.width() / 2,
                                                              decoration: BoxDecoration(
                                                                border: Border.all(color: kMainColor),
                                                                borderRadius: BorderRadius.circular(8.0),
                                                              ),
                                                              child: Center(
                                                                  child: Text(
                                                                'Add To Cart',
                                                                style: TextStyle(color: kMainColor),
                                                              )),
                                                            ),
                                                            SizedBox(
                                                              width: 20,
                                                            ),
                                                            Container(
                                                              height: 30,
                                                              width: 30,
                                                              decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(color: kContainerBorderColor.withOpacity(0.3), width: 2)),
                                                              child: Center(
                                                                child: Icon(
                                                                  FeatherIcons.heart,
                                                                  color: kMainColor,
                                                                  size: 14,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ]),
                                              ).onTap(() => ItemDtailsScreen().launch(context)).visible(foodCategory[i] != 'Popular'),
                                            );
                                          }),
                                    ],
                                  );
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ])),
              ],
            ))));
  }
}
