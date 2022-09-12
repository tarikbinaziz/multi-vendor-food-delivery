
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:multivendor_food_delivery_app/ui/Cart/mt_cart.dart';
import 'package:multivendor_food_delivery_app/ui/Favourites/mt_favourites.dart';
import 'package:multivendor_food_delivery_app/ui/Home/mt_home_screen.dart';
import 'package:multivendor_food_delivery_app/ui/My%20Order/mt_my_order.dart';

import '../../const/const.dart';
import '../Profile/mt_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int _currentIndex = 0;

  final List<Widget> _pages = [const MTHomeScreen(), const FavouritesScreen(), const CartScreen(),const MyOrderScreen(),const ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          // type: BottomNavigationBarType.fixed,
          selectedItemColor: kMainColor,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: kSubTitleColor,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                _currentIndex == 0 ? IconlyBold.home :IconlyLight.home,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 1 ? IconlyBold.heart :IconlyLight.heart,
                ),
                label: "heart"),
            BottomNavigationBarItem(
                icon: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kMainColor,
                  ),
                  child: Badge(
                      borderRadius: BorderRadius.circular(20.0),
                      badgeContent: const Text('3',style: TextStyle(color: Colors.white),),
                      borderSide: const BorderSide(color: Colors.white),
                      child: const Icon(
                        FeatherIcons.shoppingBag,
                        color: Colors.white,
                      )),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 3 ? IconlyBold.document :IconlyLight.document,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 4 ? IconlyBold.profile :IconlyLight.profile,
                ),
                label: "user"),
          ],
        ),
      ),
    );
  }
}
