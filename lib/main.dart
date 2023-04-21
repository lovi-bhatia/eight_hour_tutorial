import 'package:eight_hour_tutorial/pages/cart_page.dart';
import 'package:eight_hour_tutorial/pages/login_page.dart';
import 'package:eight_hour_tutorial/utils/routes.dart';
import 'package:eight_hour_tutorial/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // "/"-> means home route (default)
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage()
      },
    );
  }
}
