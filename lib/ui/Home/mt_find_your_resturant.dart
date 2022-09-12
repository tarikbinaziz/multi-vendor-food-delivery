import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:multivendor_food_delivery_app/ui/Home/mt_details_your_restuarant.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../widgets/mt_horizontal_food_card.dart';
import 'mt_search_restaurant.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        // automaticallyImplyLeading: false,
        elevation: 0,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            "New york",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          subtitle: const Text(
            "Find your restaurant",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kSubTitleColor),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SizedBox(
              width: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: kMainColor.withOpacity(0.08), shape: BoxShape.circle),
                    child: const Icon(
                      IconlyLight.heart,
                      color: kMainColor,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: kMainColor.withOpacity(0.08), shape: BoxShape.circle),
                    child: const Icon(
                      FeatherIcons.shoppingBag,
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: kTitleColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(color: kButtonFBGColor, borderRadius: BorderRadius.circular(30.0)),
                    child: const ListTile(
                      leading: Icon(
                        Icons.search,
                        color: kSubTitleColor,
                      ),
                      title: Text('Search Restaurants',style: TextStyle(
                        color: kSubTitleColor
                      ),),
                    ),
                  ).onTap(() => const SearchRestaurant().launch(context)),
                ),
                HorizontalList(
                    itemCount: 10,
                    itemBuilder: (_, i) {
                      return Image.asset("assets/images/banner.png",height: 120.0,width: context.width()/1.5,fit: BoxFit.cover,);
                    }),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),

                HorizontalList(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: (_, i) {
                    return Container(
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                          color: Colors.white,

                          // borderRadius: BorderRadius.all(Radius.circular(20)),
                          shape: BoxShape.circle,
                          border: Border.all(color: kButtonFBGColor, width: 2)),
                      child: Column(
                        children: [
                          Image.asset("assets/images/pizza.png"),
                          const SizedBox(height: 2.0,),
                          const Text(
                            "Pizza",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const Text(
                            "75 Places",
                            style: TextStyle(color: kSubTitleColor, fontSize: 10),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const Text(
                  "Nearby Restaurant",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                HorizontalList(
                    spacing: 15,
                    itemCount: 10,
                    itemBuilder: (_, i) {
                      return const HorizontalFoodCard().onTap(() => const DetailsRestaurant().launch(context));
                    }),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Popular Restaurants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                HorizontalList(
                    spacing: 15,
                    itemCount: 10,
                    itemBuilder: (_, i) {
                      return const HorizontalRestaurantList().onTap(() => const DetailsRestaurant().launch(context));
                    }),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "All Restaurants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, i) {
                      return const ListOfRestaurants().onTap(() => const DetailsRestaurant().launch(context));
                    })
              ]),
        ),
      ),
    ));
  }
}
