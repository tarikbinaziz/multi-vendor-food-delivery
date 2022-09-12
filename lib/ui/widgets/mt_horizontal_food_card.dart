import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class HorizontalFoodCard extends StatelessWidget {
  const HorizontalFoodCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width() / 1.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.width() / 1.6,
            height: 120,
            decoration: const BoxDecoration(
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
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(20)),
                        color: kMiniContainerColor),
                    child: const Center(
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
                      child: const Center(
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
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Hollywood Café",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5,),
          Row(
            children: const [
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
          const SizedBox(height: 5,),
          Row(
            children: const [
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
  }
}


class HorizontalRestaurantList extends StatelessWidget {
  const HorizontalRestaurantList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width() / 1.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.width() / 1.6,
            height: 120,
            decoration: const BoxDecoration(
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
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(4)),
                        color: kMiniContainerColor),
                    child: const Center(
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
                      child: const Center(
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
  }
}


class ListOfRestaurants extends StatelessWidget {
  const ListOfRestaurants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: context.width()/1.1,
              height: 140,
              decoration: const BoxDecoration(
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
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(4)),
                          color: kMiniContainerColor),
                      child: const Center(
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
                        child: const Center(
                            child: Icon(
                              IconlyLight.heart,
                              color: Colors.white,
                              size: 9,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "The Heaven’s Kitchen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5,),
            Row(
              children: const [
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
            const SizedBox(height: 5,),
            Row(
              children: const [
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
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
