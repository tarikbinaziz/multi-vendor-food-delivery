import 'package:flutter/material.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/views/auth/mt_welcome_screen.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Location/mt_location.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var currentIndex = 0;
  PageController pageViewController = PageController();

  List imageList = ["assets/images/onboard1.png", "assets/images/onboard2.png", "assets/images/onboard3.png"];
  List<String> textList = ["Browse The menu & Order Directly", "Find your Favorite Restaurant", "Pick The Food You Need"];

  List<String> description = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. A, felis venenatis et  Elementum molestie',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. A, felis venenatis et  Elementum molestie',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. A, felis venenatis et  Elementum molestie'
  ];
  List<String> buttonText = ["Next", "Next", 'Get Started'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 10.0),
                child: const Text(
                  'Skip',
                  style: TextStyle(color: kSubTitleColor, fontSize: 16.0),
                ).onTap(
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LocationScreen(),
                    ),
                  ),
                ),
              )
            ],
          ),
          body: Column(children: [
            Expanded(
              child: PageView.builder(
                  controller: pageViewController,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(
                          imageList[index],
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width / 1.5,
                        ),
                        Expanded(
                            child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFFFF7F5), borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                          child: Column(
                            verticalDirection: VerticalDirection.down,
                            children: [
                              const SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                                child: Text(
                                  textList[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kTitleColor,
                                    fontSize: 25.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: Text(
                                  description[index],
                                  style: const TextStyle(
                                    color: kSubTitleColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [for (var i = 0; i < imageList.length; i++) buildIndicator(currentIndex == i)],
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  currentIndex < 2
                                      ? pageViewController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn)
                                      : const WelcomeScreen().launch(context);
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset("assets/images/button.png"),
                                    Text(
                                      currentIndex < 2 ? 'Next' : 'Get Started',
                                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    );
                  }),
            ),
          ])),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Container(
          height: isSelected ? 12 : 8,
          width: isSelected ? 12 : 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? const Color(0xFFFF6935) : const Color(0xFFFBA06A),
          ),
        ));
  }
}
