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

      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter User name",
                    labelText: "UserName",
                  ),
                ),
                TextFormField(
                  // obscureText to hide text
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "PassWord",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Login Pressed");
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
