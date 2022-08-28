import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class DetailsRestaurant extends StatefulWidget {
  const DetailsRestaurant({Key? key}) : super(key: key);

  @override
  State<DetailsRestaurant> createState() => _DetailsRestaurantState();
}

class _DetailsRestaurantState extends State<DetailsRestaurant> {
  var rating = 2.0;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  titleSpacing: 0.0,
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  toolbarHeight: 200,
                  title: Stack(
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/bigrestaurant.png"),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 60.0, left: 24, right: 24),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kArrowContainerColor),
                                child: Icon(
                                  FeatherIcons.arrowLeft,
                                  color: Colors.black,
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kArrowContainerColor),
                                    child: Icon(
                                      FeatherIcons.heart,
                                      color: kMainColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kArrowContainerColor),
                                    child: Icon(
                                      Icons.share,
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
                ),
                body: SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hollywood Café",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3.3km away | \$ 15 Minimum",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: kSubTitleColor),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Map Direction",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            color: kMainColor,
                                            shape: BoxShape.circle),
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
                                      inActiveColor:
                                          kStarColor.withOpacity(0.3),
                                      onRatingChanged: (value) {
                                        setState(() {
                                          rating = value;
                                        });
                                      }),
                                  Text(
                                    "5.0 ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "(100+ ratings)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: kSubTitleColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FeatherIcons.clock,
                                    color: kMainColor,
                                    size: 13,
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
                                  isExpanded
                                      ? Icons.keyboard_arrow_down
                                      : Icons.keyboard_arrow_right,
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
                                  isExpanded
                                      ? Icons.keyboard_arrow_down
                                      : Icons.keyboard_arrow_right,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Saturday",
                                              style: TextStyle(
                                                color: kMainColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "Closed",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: kMainColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Sunday",
                                              style: TextStyle(
                                                color: kMainColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "Closed",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: kMainColor),
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
                                  isExpanded
                                      ? Icons.keyboard_arrow_down
                                      : Icons.keyboard_arrow_right,
                                  color: kTitleColor,
                                ),
                                title: Text(
                                  "Ratings",
                                  style: TextStyle(
                                    color: kTitleColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              // TabBar(
                              //     isScrollable: true,
                              //     labelColor: kMainColor,
                              //     unselectedLabelColor: kSubTitleColor,
                              //     indicatorColor: kMainColor,
                              //     labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                              //     tabs: [
                              //       Tab(
                              //         text: "popular",
                              //       ),
                              //       Tab(
                              //         text: "Pizza",
                              //       ),
                              //       Tab(
                              //         text: "Pasta & Rice",
                              //       ),
                              //       Tab(
                              //         text: "Drink",
                              //       ),
                              //       Tab(
                              //         text: "Burger",
                              //       ),
                              //     ]),
                              Text(
                                "Popular",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Most ordered right now",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kSubTitleColor),
                              ),
                              SizedBox(
                                 height: 8,
                              ),
                              HorizontalList(
                                  itemBuilder: (BuildContext context, int index) {
                                    return Text("Popular",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 20),);
                                  },
                                  itemCount: 5,
                                   ),

                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: kSubTitleColor)
                                ),
                                child: Stack(children: [
                                  Container(

                                    width: context.width() / 1.8,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: context.width() / 1.8,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.amberAccent,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/rice.png"),
                                                fit: BoxFit.cover),
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 0.5),
                                                      //  borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      shape: BoxShape.circle,
                                                      color: Colors.white),
                                                  child: Center(
                                                      child: Icon(
                                                    FeatherIcons.heart,
                                                    color: kMainColor,
                                                    size: 14,
                                                  )),
                                                ),
                                              )
                                            ],
                                          ),
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
                                                "Fried Brown\nRice",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "\$5.00",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: kTruckColor),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: ElevatedButton(
                                                  onPressed: () {

                                                  },
                                                  child: Text(
                                                    "Add to bag",
                                                    style: TextStyle(color: kMainColor),
                                                  ),
                                                  style: ElevatedButton.styleFrom(
                                                    side: BorderSide(color: kMainColor,width: 2),
                                                    primary: Colors.white,
                                                    minimumSize: Size(150, 35),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0)),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),


                                          ],
                                        ),

                                    ),

                                ]),
                              )
                            ]))))));
  }
}
