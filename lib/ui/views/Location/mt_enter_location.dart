import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import 'mt_confirm_location.dart';

class EnterLocation extends StatelessWidget {
  EnterLocation({Key? key}) : super(key: key);
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
            elevation: 0,
            // The search area here
            // title: Container(
            //     width: double.infinity,
            //     height: 50,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(5)),
            //     child: Center(
            //         child: AppTextField(
            //       decoration: InputDecoration(
            //           fillColor: kButtonFBGColor,
            //           filled: true,
            //           suffixIcon: Icon(FeatherIcons.crosshair),
            //           hintText: 'Set delivery address',
            //           border: InputBorder.none),
            //       textFieldType: TextFieldType.ADDRESS,
            //     )))
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> SearchPage()));
            }, icon: Icon(FeatherIcons.crosshair,color: Colors.black,))
          ],
        ),
        body: Stack(alignment: Alignment.bottomCenter, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, left: 24, right: 24),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SearchPage()));
              },
              child: Text("Confirm"),
              style: ElevatedButton.styleFrom(
                primary: kMainColor,
                minimumSize: Size(372, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
