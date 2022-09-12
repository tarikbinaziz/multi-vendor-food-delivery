import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../const/const.dart';

class SearchRestaurant extends StatefulWidget {
  const SearchRestaurant({Key? key}) : super(key: key);

  @override
  State<SearchRestaurant> createState() => _SearchRestaurantState();
}

class _SearchRestaurantState extends State<SearchRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black,),
        elevation: 0,
        title: const Text(
          'Find nearby Resturent',
          style: TextStyle(color: kTitleColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(FeatherIcons.search),
                  hintText: 'Search restaurant...',
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.transparent))),
            ),
            const ListTile(
              leading: Icon(IconlyLight.location,color: kTruckColor,),
              title: Text("18th Street Brewery",style: TextStyle(fontWeight: FontWeight.w400,color: kTitleColor),),
              subtitle: Text("Oakley Avenue, Hammond, IN",style: TextStyle(fontWeight: FontWeight.w400,color: kSubTitleColor),),
            ),
            const Divider(thickness: 1,color: kDividerColor,),

            const ListTile(
              leading: Icon(IconlyLight.location,color: kTruckColor,),
              title: Text("18th Avenue",style: TextStyle(fontWeight: FontWeight.w400,color: kTitleColor),),
              subtitle: Text("Brooklyn, NY",style: TextStyle(fontWeight: FontWeight.w400,color: kSubTitleColor),),
            ),
            const Divider(thickness: 1,color: kDividerColor,),
          ],
        ),
      ),
    );
  }
}
