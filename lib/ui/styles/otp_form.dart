import 'package:flutter/material.dart';
import 'package:multivendor_food_delivery_app/ui/views/Location/mt_location.dart';

import '../../const/const.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;
  late FocusNode pin5FocusNode;
  late FocusNode pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    pin6FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text(
          "Verification",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: kTitleColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Enter the 6 digit code sent to",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              Center(

                child: Form(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 50.0,
                            child: TextFormField(
                              autofocus: true,
                              obscureText: true,
                              style: const TextStyle(fontSize: 24),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: otpInputDecoration,
                              onChanged: (value) {
                                nextField(value, pin2FocusNode);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                            child: TextFormField(
                              focusNode: pin2FocusNode,
                              obscureText: true,
                              style: const TextStyle(fontSize: 24),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: otpInputDecoration,
                              onChanged: (value) => nextField(value, pin3FocusNode),
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                            child: TextFormField(
                              focusNode: pin3FocusNode,
                              obscureText: true,
                              style: const TextStyle(fontSize: 24),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: otpInputDecoration,
                              onChanged: (value) => nextField(value, pin4FocusNode),
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                            child: TextFormField(
                              focusNode: pin4FocusNode,
                              obscureText: true,
                              style: const TextStyle(fontSize: 24),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: otpInputDecoration,
                              onChanged: (value) => nextField(value, pin5FocusNode),
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                            child: TextFormField(
                              focusNode: pin5FocusNode,
                              obscureText: true,
                              style: const TextStyle(fontSize: 24),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: otpInputDecoration,
                              onChanged: (value) => nextField(value, pin6FocusNode),
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                            child: TextFormField(
                              focusNode: pin6FocusNode,
                              obscureText: true,
                              style: const TextStyle(fontSize: 24),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: otpInputDecoration,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  pin6FocusNode.unfocus();
                                  // Then you need to check is the code is correct or not
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 44.0, right: 44.0),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: "I didn’t receive code ",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: kSubTitleColor),
                        children: [
                          TextSpan(
                            text: "Resend code",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: kMainColor),
                          )
                        ])),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LocationScreen()));
                },
                style: ElevatedButton.styleFrom(
                    primary: kMainColor, minimumSize: const Size(372, 50)),
                child: const Text("Verify Me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}