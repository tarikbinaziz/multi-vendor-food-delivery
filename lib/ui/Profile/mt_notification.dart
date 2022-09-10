import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Notifications",
          style: TextStyle(color: kTitleColor),
        ),
        actions: [
          PopupMenuButton(
              position: PopupMenuPosition.under,
              elevation: 3,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      child: Text(
                    "Mute Notification",
                    style: TextStyle(color: kSubTitleColor),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Clear All",
                    style: TextStyle(color: kSubTitleColor),
                  )),
                ];
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: context.height()/3.5,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    child: ListTile(
                      minLeadingWidth: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/alexgirl.png"))),
                      ),
                      title: Text(
                        "Leslie Alexander",
                        style: TextStyle(color: kTitleColor),
                      ),
                      subtitle: Text(
                        "2 min ago “New Message”",
                        style: TextStyle(color: kTitleColor),
                      ),
                      trailing: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: kMainColor, shape: BoxShape.circle),
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              "Yesterday",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: context.height()/3.5,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    child: ListTile(
                      minLeadingWidth: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/mboy.png"))),
                      ),
                      title: Text(
                        "Leslie Alexander",
                        style: TextStyle(color: kTitleColor),
                      ),
                      subtitle: Text(
                        "2 min ago “New Message”",
                        style: TextStyle(color: kTitleColor),
                      ),
                      trailing: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: kSubTitleColor.withOpacity(0.4), shape: BoxShape.circle),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
