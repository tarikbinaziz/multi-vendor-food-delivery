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

  List<dynamic> foodCategory = [
    'Popular',
    'Pizza',
    'Pasta & Rice',
    'Burger',
    'Drink'
  ];

  @override
  void initState() {
    makeKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
                    child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/bigrestaurant.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 24, right: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kArrowContainerColor),
                          child: Icon(
                            FeatherIcons.arrowLeft,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kArrowContainerColor),
                              child: Icon(
                                FeatherIcons.heart,
                                color: kMainColor,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kArrowContainerColor),
                              child: Icon(
                                Icons.share,
                                color: kTruckColor,
                                size: 20,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: kMainColor, shape: BoxShape.circle),
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
                        children: [
                          Column(
                            children: [

                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      HorizontalList(
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: selectedCat == foodCategory[index]
                                        ? kMainColor
                                        : Colors.white),
                              ),
                            ),
                            child: Text(
                              foodCategory[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ).onTap(() => Scrollable.ensureVisible(
                                allKey[index].currentContext!)),
                          );
                        },
                        itemCount: foodCategory.length,
                      ),
                      SizedBox(
                        height: 5,
                      ),
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
                            fontWeight: FontWeight.w400, color: kSubTitleColor),
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
                                  padding: const EdgeInsets.only(
                                      bottom: 10.0, top: 10.0),
                                  child: Text(
                                    foodCategory[i],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
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
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                    color: kBorderColor
                                                        .withOpacity(0.4))),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: context.width() / 1.8,
                                                  height: 100,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.amberAccent,
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    10.0)),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/rice.png"),
                                                        fit: BoxFit.cover),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 80.0,
                                                            right: 10.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 30,
                                                          height: 30,
                                                          decoration:
                                                              BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .white,
                                                                      width:
                                                                          0.5),
                                                                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: Colors
                                                                      .white),
                                                          child: const Center(
                                                              child: Icon(
                                                            FeatherIcons.heart,
                                                            color: kMainColor,
                                                            size: 14,
                                                          )),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Fried Brown Rice with Kimchi",
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        "\$5.00",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14,
                                                            color: kTruckColor),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        width: context.width() /
                                                            1.8,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  kMainColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Center(
                                                            child: Text(
                                                          'Add To Cart',
                                                          style: TextStyle(
                                                              color:
                                                                  kMainColor),
                                                        )),
                                                      ).onTap(() {
                                                        setState(() {
                                                          isAdded = !isAdded;
                                                        });
                                                      }).visible(!isAdded),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        width: context.width() /
                                                            1.8,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: kMainColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Icon(
                                                              FeatherIcons
                                                                  .minus,
                                                              color:
                                                                  Colors.white,
                                                            ).onTap(() {
                                                              setState(() {
                                                                value > 1
                                                                    ? value--
                                                                    : value = 1;
                                                              });
                                                            }),
                                                            Text(
                                                              '$value in bag',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            Icon(
                                                              FeatherIcons.plus,
                                                              color:
                                                                  Colors.white,
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
                                          )),
                                ).visible(foodCategory[i] == 'Popular'),
                                ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 3,
                                    itemBuilder: (_, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                  color: kBorderColor
                                                      .withOpacity(0.4))),
                                          child: Row(children: [
                                            Container(
                                                width: 80,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  color: Colors.amberAccent,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)),
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Cauliflower Pizza Crust",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    "\$5.00",
                                                    style: TextStyle(
                                                        color: kTruckColor),
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        width:
                                                            context.width() / 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  kMainColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Center(
                                                            child: Text(
                                                          'Add To Cart',
                                                          style: TextStyle(
                                                              color:
                                                                  kMainColor),
                                                        )),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Container(
                                                        height: 30,
                                                        width: 30,
                                                        decoration: BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                                color: kContainerBorderColor
                                                                    .withOpacity(
                                                                        0.3),
                                                                width: 2)),
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
                                        ).visible(foodCategory[i] != 'Popular'),
                                      );
                                    }),
                              ],
                            );
                          })
                    ])),
          ],
        )))));
  }
}
