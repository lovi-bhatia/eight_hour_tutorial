import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        cardColor: Colors.white,
        canvasColor: creamColor,
        primaryColor: darkBluishColor,
        // colorSchemeSeed: Colors.amber,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
          // titleTextStyle: Theme.of(context).textTheme.titleLarge,
          titleTextStyle: TextStyle(
            color: darkBluishColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      );

  // theme change
  // themeMode: ThemeMode.dark,
  // darkTheme: ThemeData(brightness: Brightness.dark),

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        primaryColor: lightBluishColor,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          // titleTextStyle: Theme.of(context).textTheme.titleLarge.copyWith(
          //       !headline6: context.textTheme.headlineMedium
          //           .copyWith(color: Colors.white),
          //     ),
        ),
      );

  //Colors

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
