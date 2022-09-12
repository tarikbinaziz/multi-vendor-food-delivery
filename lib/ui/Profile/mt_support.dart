import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          leading: const BackButton(
            color: Colors.black,
          ),
          elevation: 0,
          title: ListTile(
            minLeadingWidth: 0,
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/profile.png"))),
            ),
            title: const Text(
              "Leslie Alexander",
              style: TextStyle(color: kTitleColor),
            ),
            subtitle: const Text(
              "2 min ago “New Message”",
              style: TextStyle(color: kSubTitleColor),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Center(
                child: Text(
                  "09:41 AM",
                  style: TextStyle(
                      color: kSubTitleColor, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kTruckColor),
                    child: const Center(
                        child: Text(
                      "Hi, Mandy",
                      style: TextStyle(color: kCircleContainer),
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/profile.png"))),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Container(
                  width: context.width() / 3,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kTruckColor),
                  child: const Center(
                      child: Text(
                    "I’ve tried the app",
                    style: TextStyle(color: kCircleContainer),
                  )),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo/logo.png"))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kButtonFBGColor),
                    child: const Center(
                        child: Text(
                      "Hi, Mandy",
                      style: TextStyle(color: kTitleColor),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kTruckColor),
                    child: const Center(
                        child: Text(
                      "Yeah, It’s really good!",
                      style: TextStyle(color: kCircleContainer),
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/profile.png"))),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo/logo.png"))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text(
                      "Typing...",
                      style: TextStyle(color: kSubTitleColor),
                    )),
                  ),

                ],
              ),
              const Divider(thickness: 1,color: kDividerColor,),
              const SizedBox(height: 10,),
              Container(
                  width: double.infinity,
                  color: Colors.white,
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: AppTextField(

                          decoration: InputDecoration(
                            hintText: "Type your message",
                            hintStyle: const TextStyle(color: Colors.black54),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                borderSide: BorderSide(
                                  color: kDividerColor,
                                  width: 1
                                )),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all( 5.0),
                              child: FloatingActionButton(
                                onPressed: () {},
                                mini: true,
                                backgroundColor: kMainColor,
                                elevation: 0,
                                child: const Center(
                                  child: Icon(
                                    IconlyBold.send,
                                    color: kCircleContainer,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // ignore: deprecated_member_use
                          textFieldType: TextFieldType.ADDRESS,
                        ),
                      ),
                    ],
                  )),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
