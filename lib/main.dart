import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multivendor_food_delivery_app/ui/Splash%20Screen/mt_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:
            GoogleFonts.dmSansTextTheme(Theme.of(context).textTheme.apply()),

      ),
      home: SplashScreen(),
    );
  }
}
