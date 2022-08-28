import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/Home/mt_home.dart';


class AddNewAddress extends StatelessWidget {
  AddNewAddress({Key? key}) : super(key: key);
  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          titleSpacing: 0.0,
          iconTheme: IconThemeData(color: kTitleColor),
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: kButtonFBGColor, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(controller: textEditingController,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear,),
                      onPressed: () {
                        textEditingController.clear();
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0, left: 24, right: 24),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=> HomeScreen()));
            },
            child: Text("Confirm"),
            style: ElevatedButton.styleFrom(
              primary: kMainColor,
              minimumSize: Size(372, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),)
      ]
      ),
    );
  }
}