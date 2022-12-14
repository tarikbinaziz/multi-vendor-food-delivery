import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:multivendor_food_delivery_app/ui/widgets/mt_cart_button.dart';
import 'package:nb_utils/nb_utils.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool _checkboxListTile = false;
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  void _bottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        )),
        isScrollControlled: true,
        builder: (builder) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Add New Card",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kTitleColor,
                      ),
                    ),
                    TextButton(
                        onPressed: () => finish(context),
                        child: const Icon(
                          Icons.close,
                          color: kTitleColor,
                        )),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0),
                child: Divider(
                  thickness: 1,
                  color: kDividerColor,
                ),
              ),
              CreditCardWidget(
                cardNumber: '3754 9000 0800 9735',
                expiryDate: '05/31',
                cardHolderName: "Shaidul Islam",
                cvvCode: '23/12',
                bankName: 'VISA',
                backgroundImage: "assets/images/bg card.png",
                showBackView: false,
                obscureCardNumber: true,
                isHolderNameVisible: true,
                isChipVisible: false,
                isSwipeGestureEnabled: true,
                cardBgColor: Colors.white,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {
                  creditCardBrand = CreditCardBrand(CardType.visa);
                },
              ),

              CreditCardForm(
                formKey: formKey, // Required
                onCreditCardModelChange: (CreditCardModel data) {}, // Required
                themeColor: Colors.red,
                obscureCvv: false,
                obscureNumber: false,
                isHolderNameVisible: true,
                isCardNumberVisible: true,
                isExpiryDateVisible: true,
                cardNumberDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number',
                  hintText: 'XXXX XXXX XXXX XXXX',
                ),
                expiryDateDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Expired Date',
                  hintText: 'XX/XX',
                ),
                cvvCodeDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CVV',
                  hintText: 'XXX',
                ),
                cardHolderDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Holder',
                ),
                cardNumber: '3754 9000 0800 9735',
                expiryDate: '05/31',
                cardHolderName: "Shaidul Islam",
                cvvCode: '23/12',
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CartButton("Save"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            width: context.width(),
            height: 50,
            decoration: BoxDecoration(
              color: kMainColor,
              border: Border.all(color: kMainColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Center(
                child: Text(
                  "Add Card",
                  style: TextStyle(color: kCircleContainer),
                ))).onTap(() {
          _bottomSheet();
        }),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const BackButton(color: Colors.black,),
          elevation: 0,
          title: const Text(
            'Payment Methord',
            style: TextStyle(color: kTitleColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Your payment cards',
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.w700)),

              CreditCardWidget(
                cardNumber: '3754 9000 0800 9735',
                expiryDate: '05/31',
                cardHolderName: "Shaidul Islam",
                cvvCode: '23/12',
                bankName: 'VISA',
                backgroundImage: "assets/images/bg card.png",
                showBackView: false,
                obscureCardNumber: true,
                isHolderNameVisible: true,
                isChipVisible: false,
                isSwipeGestureEnabled: true,
                cardBgColor: Colors.white,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {
                  creditCardBrand = CreditCardBrand(CardType.visa);
                },
              ),

              CheckboxListTile(
                contentPadding: const EdgeInsets.all(0),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: kMainColor,
                title: Transform.translate(
                  offset: const Offset(-10, 0),
                  child: const Text(
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

              CreditCardWidget(
                cardNumber: '3754 9000 0800 9735',
                expiryDate: '05/31',
                cardHolderName: "Shaidul Islam",
                cvvCode: '23/12',
                bankName: 'VISA',
                backgroundImage: "assets/images/bg card.png",
                showBackView: false,
                obscureCardNumber: true,
                isHolderNameVisible: true,
                isChipVisible: false,
                isSwipeGestureEnabled: true,
                cardBgColor: Colors.white,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {
                  creditCardBrand = CreditCardBrand(CardType.visa);
                },
              ),

              CheckboxListTile(
                contentPadding: const EdgeInsets.all(0),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: kMainColor,
                title: Transform.translate(
                  offset: const Offset(-10, 0),
                  child: const Text(
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
            ],
          ),
        ),
      ),
    );
  }
}
