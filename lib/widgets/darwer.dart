import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final ImgUrl =
      "https://www.bollywoodhungama.com/wp-content/uploads/2021/09/WhatsApp-Image-2021-09-07-at-5.16.34-PM.jpeg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Harsh"),
                accountEmail: const Text("Porwalharsh007@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(ImgUrl)),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.3,
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.3,
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
