import 'package:eight_hour_tutorial/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // child: Center(
      //   child: Text(
      //     "login 4page",
      //     style: TextStyle(
      //       fontSize: 40,
      //       color: Colors.blueAccent,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     textScaleFactor: 2.0,
      //   ),
      // ),

      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              // height: 900,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter User name",
                      labelText: "UserName",
                    ),
                  ),
                  TextFormField(
                    // obscureText to hide text
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "PassWord",
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // print("Login Pressed");
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    style: TextButton.styleFrom(
                      shadowColor: Colors.yellow,
                      // iconColor: Colors.pink,
                      foregroundColor: Colors.tealAccent,
                      // backgroundColor: Colors.black,
                      surfaceTintColor: Colors.red,
                      minimumSize: Size(120, 40),
                    ),
                    child: const Text("Login"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
