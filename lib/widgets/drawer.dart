import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://lovishbhatia.me/assets/img/me1.jpg";

    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                accountName: Text("Lovish Bhatia"),
                accountEmail: Text("lovishb41@gmail.com"),
                // currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                decoration: BoxDecoration(color: Colors.deepPurple),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.hammer,
                color: Colors.white,
              ),
              title: Text(
                "Hammer",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.antenna_radiowaves_left_right,
                color: Colors.white,
              ),
              title: Text(
                "Radio",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.checkmark_circle,
                color: Colors.white,
              ),
              title: Text(
                "Circle",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
