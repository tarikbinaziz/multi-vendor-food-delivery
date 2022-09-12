import 'package:flutter/material.dart';
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
        title: const Text(
          "Notifications",
          style: TextStyle(color: kTitleColor),
        ),
        actions: [
          PopupMenuButton(
              position: PopupMenuPosition.under,
              elevation: 3,
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: Text(
                      "Mute Notification",
                      style: TextStyle(color: kSubTitleColor),
                    ),
                  ),
                  const PopupMenuItem(
                    child: Text(
                      "Clear All",
                      style: TextStyle(color: kSubTitleColor),
                    ),
                  ),
                ];
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: context.height() / 3.5,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: double.infinity,
                    child: ListTile(
                      minLeadingWidth: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/alexgirl.png"))),
                      ),
                      title: const Text(
                        "Leslie Alexander",
                        style: TextStyle(color: kTitleColor),
                      ),
                      subtitle: const Text(
                        "2 min ago “New Message”",
                        style: TextStyle(color: kTitleColor),
                      ),
                      trailing: Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(color: kMainColor, shape: BoxShape.circle),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Text(
              "Yesterday",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: context.height() / 3.5,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: double.infinity,
                    child: ListTile(
                      minLeadingWidth: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/mboy.png"))),
                      ),
                      title: const Text(
                        "Leslie Alexander",
                        style: TextStyle(color: kTitleColor),
                      ),
                      subtitle: const Text(
                        "2 min ago “New Message”",
                        style: TextStyle(color: kTitleColor),
                      ),
                      trailing: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(color: kSubTitleColor.withOpacity(0.4), shape: BoxShape.circle),
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
