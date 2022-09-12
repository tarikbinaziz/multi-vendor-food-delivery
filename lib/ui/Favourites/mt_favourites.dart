import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const BackButton(
            color: Colors.black,
          ),
          elevation: 0,
          title: const Text(
            'Favourites',
            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: kBorderColor.withOpacity(0.4))),
                  child: Row(
                    children: [
                      Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
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
                            const Text(
                              "Cauliflower Pizza Crust",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "\$5.00",
                              style: TextStyle(color: kTruckColor, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  width: context.width() / 2,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: kMainColor),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Add To bag',
                                    style: TextStyle(color: kMainColor),
                                  )),
                                ).onTap(() {
                                  showDialog(
                                      context: context,
                                      builder: (builder) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                width: context.width() / 3,
                                                height: context.width() / 3.8,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    image: const DecorationImage(image: AssetImage("assets/images/pizzam.png"), fit: BoxFit.cover)),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              const Text(
                                                "Are You Sure!",
                                                style: TextStyle(fontWeight: FontWeight.w700, color: kTitleColor),
                                              ),
                                              const Text(
                                                "Remove Salad with herb spices\n50g ",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    width: context.width() / 3.5,
                                                    padding: const EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: kMainColor),
                                                      borderRadius: BorderRadius.circular(8.0),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        "Cancel",
                                                        style: TextStyle(color: kMainColor, fontWeight: FontWeight.w700),
                                                      ),
                                                    ),
                                                  ).onTap(
                                                    () {
                                                      finish(context);
                                                    },
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Container(
                                                      width: context.width() / 3.5,
                                                      padding: const EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: kMainColor,
                                                        border: Border.all(color: kMainColor),
                                                        borderRadius: BorderRadius.circular(8.0),
                                                      ),
                                                      child: const Center(
                                                          child: Text(
                                                        "Yes",
                                                        style: TextStyle(color: kCircleContainer, fontWeight: FontWeight.w700),
                                                      ))),
                                                ],
                                              )
                                            ],
                                          ),
                                        );
                                      });
                                }),
                                const SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration:
                                      BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kContainerBorderColor.withOpacity(0.3), width: 2)),
                                  child: const Center(
                                    child: Icon(
                                      IconlyBold.heart,
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
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
