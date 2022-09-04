import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/Cart/mt_order_successful.dart';
import 'package:multivendor_food_delivery_app/ui/widgets/mt_textField.dart';
import 'package:nb_utils/nb_utils.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool _checkboxListTile = false;

  void _bottomSheet() {
    showModalBottomSheet(
     isScrollControlled: true,
        context: context,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        builder: (builder) {
          return Padding(
            padding:  EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add New Card",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kTitleColor,
                      ),
                    ),
                    TextButton(
                        onPressed: () => finish(context),
                        child: Icon(
                          Icons.close,
                          color: kTitleColor,
                        )),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: kDividerColor,
                ),
                SizedBox(height: 10,),
                Container(
                  height: context.height() / 6.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: kMainColor),
                ),
                SizedBox(height: 20,),
                CustomTextField("Enter your street",Text("Card Name")),
                SizedBox(height: 20,),
                CustomTextField("5365 3652 3659 2586",Text("Card Name")),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: context.width()/2.3,
                        child: CustomTextField("12/24",Text("Expiry Date"),)),
                    SizedBox(
                        width: context.width()/2.3,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              hintText: "12/24",
                              hintStyle: TextStyle(color: kSubTitleColor,fontWeight: FontWeight.w400),
                              label:Text("CVC / CVV"),
                              labelStyle: TextStyle(color: kLebelColor,fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide(color: kDividerColor)
                              ),
                            suffixIcon: Icon(FeatherIcons.helpCircle,size: 16,color: kSubTitleColor,)

                          ),
                          
                        )
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                    padding: EdgeInsets.all(8.0),
                    width: context.width(),
                    height: 50,
                    decoration: BoxDecoration(
                      color: kMainColor,
                      border: Border.all(color: kMainColor),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(color: kCircleContainer),
                        ))),
                SizedBox(height: 10,),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Payment Methord',
            style: TextStyle(color: kTitleColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
          //  mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your payment cards',
                  style:
                      TextStyle(color: kTitleColor, fontWeight: FontWeight.w700)),
              SizedBox(
                height: 20,
              ),
              Container(
                height: context.height() / 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: kMainColor),
              ).onTap((){
                OrderSuccessfulScreen().launch(context);
              }),
              CheckboxListTile(
                contentPadding: EdgeInsets.all(0),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: kMainColor,
                title: Transform.translate(
                  offset: Offset(-10, 0),
                  child: Text(
                    "Use as the payment methord",
                    style: TextStyle(color: kTitleColor),
                  ),
                ),
                value: _checkboxListTile,
                onChanged: (value) {
                  setState(() {
                    _checkboxListTile = value!;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: context.height() / 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: kMainColor),
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.all(0),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: kMainColor,
                title: Transform.translate(
                  offset: Offset(-10, 0),
                  child: Text(
                    "Use as the payment methord",
                    style: TextStyle(color: kTitleColor),
                  ),
                ),
                value: _checkboxListTile,
                onChanged: (value) {
                  setState(() {
                    _checkboxListTile = value!;
                  });
                },
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                  padding: EdgeInsets.all(8.0),
                  width: context.width(),
                  height: 50,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    border: Border.all(color: kMainColor),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                      child: Text(
                    "Add Card",
                    style: TextStyle(color: kCircleContainer),
                  ))).onTap(() {
                _bottomSheet();
              })
            ],
          ),
        ),
      ),
    );
  }
}
