import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../views/Location/mt_enter_location.dart';
import '../widgets/mt_horizontal_food_card.dart';
import 'mt_details_your_restuarant.dart';
import 'mt_find_your_resturant.dart';
import 'mt_offer.dart';

class MTHomeScreen extends StatefulWidget {
  const MTHomeScreen({Key? key}) : super(key: key);

  @override
  State<MTHomeScreen> createState() => _MTHomeScreenState();
}

class _MTHomeScreenState extends State<MTHomeScreen> {

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        builder: (builder) {
          return Container(
            height: 430.0,
            color: Colors.transparent,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
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
                                children: const [
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
                              const Spacer(),
                              TextButton(
                                  onPressed: () => finish(context),
                                  child: const Icon(
                                    Icons.close,
                                    color: kTitleColor,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (_, i) {
                                return Card(
                                  elevation: 2,
                                  shadowColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20.0)),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 120.0,
                                        width: context.width(),
                                        decoration: const BoxDecoration(
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
                                        title: const Text(
                                          "New York",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        subtitle: const Text(
                                          "Middleton, Tennessee(TN), 38052",
                                          style: TextStyle(
                                              color: kSubTitleColor),
                                        ),
                                        trailing: Container(
                                          padding: const EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                              color: kMainColor
                                                  .withOpacity(0.08),
                                              shape: BoxShape.circle),
                                          // ignore: prefer_const_constructors
                                          child: Icon(
                                            IconlyBold.edit,
                                            color: kMainColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                        const Spacer(),
                        Row(
                          children: const [
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
                        ).onTap(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const EnterLocation()));
                        }),
                      ],
                    ),
                  ),
                )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            "Hi Shaidul Islam",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          subtitle: const Text(
            "It’s lunch time!",
            style: TextStyle(
                color: kSubTitleColor),
          ),
          trailing: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: kMainColor.withOpacity(0.08),
                shape: BoxShape.circle),
            // ignore: prefer_const_constructors
            child: Icon(
              FeatherIcons.search,
              color: kMainColor,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        titleSpacing: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
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
                        child: const Icon(
                          Icons.location_on,
                          color: kMainColor,
                        ),
                      ),
                      title: const Text(
                        "Current location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kTitleColor),
                      ),
                      subtitle: const Text(
                        "Middleton, Tennessee(TN), 38052",
                        style: TextStyle(
                            fontSize: 12,
                            color: kSubTitleColor),
                      ),
                      trailing: const Icon(
                        FeatherIcons.arrowRight,
                        color: kSubTitleColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(

                    width: context.width() / 2.2,
                    height: 120,
                    decoration: BoxDecoration(
                        color: kPickUpContainerColor,
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(image: AssetImage("assets/images/pick up.png"))
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 17.0, left: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pick Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Lorem ipsum \ndolor sit amet\nnsectetur.",
                            style: TextStyle(
                                fontSize: 12,
                                color: kSubTitleColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      width: context.width() / 2.2,
                      height: 120,
                      decoration: BoxDecoration(
                          color: kPickUpContainerColor,
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(image: AssetImage("assets/images/offer.png"),fit: BoxFit.cover)
                      ),
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 10.0, top: 17),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Offer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "Lorem ipsum\ndolor sit amet\nnsectetur.",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: kSubTitleColor),
                            ),
                          ],
                        ),
                      ).onTap((){
                        const OfferFoodScreen().launch(context);
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: context.width(),
                height: 120,
                decoration: BoxDecoration(
                    color: kPickUpContainerColor,
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(image: AssetImage( "assets/images/find_resturant.png",),fit: BoxFit.cover)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 25),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Find restaurant",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet\nnsectetur.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: kSubTitleColor),
                      ),
                    ],
                  ),
                ).onTap(() => const FindYourResturant().launch(context)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Nearby restaurant",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              HorizontalList(
                  spacing: 10,
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  itemBuilder: (_, i) {
                    return const HorizontalRestaurantList().onTap(() => const DetailsRestaurant().launch(context));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
