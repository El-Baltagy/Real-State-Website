import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/screens/home_screen.dart';
import 'package:real_state/widgets/main/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real State App',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor:kBgColor ,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.white
        ).copyWith(
          bodyText1: TextStyle(
            color: kBodyTextColor
          ),
          bodyText2: TextStyle(
            color: kBodyTextColor
          ),
        ),
      ),
      home: MainSection() ,
    );
  }
}
