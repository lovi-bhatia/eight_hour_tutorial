import 'package:eight_hour_tutorial/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(
        Duration(milliseconds: 500),
      );
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                changeButton
                    ? "assets/images/hey.png"
                    : "assets/images/login_image.png",

                fit: BoxFit.cover,
                // height: 900,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter User name",
                        labelText: "UserName",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      // obscureText to hide text
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "PassWord",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty";
                        } else if (value.length < 6)
                          return "Password length should be atleast 6";

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // print("Login Pressed");
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   style: TextButton.styleFrom(
                    //     shadowColor: Colors.yellow,
                    //     // iconColor: Colors.pink,
                    //     foregroundColor: Colors.tealAccent,
                    //     // backgroundColor: Colors.black,
                    //     surfaceTintColor: Colors.red,
                    //     minimumSize: Size(120, 40),
                    //   ),
                    //   child: const Text("Login"),
                    // ),

                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          // child: Ink(
                          duration: Duration(milliseconds: 500),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,
                          //   // shape:
                          //   //     changeButton ? BoxShape.circle : BoxShape.rectangle,

                          // ),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
