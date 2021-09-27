import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Mizanur Rahaman"),
            accountEmail: Text("mizanurrahaman592@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C5603AQH4Q3zonuj86A/profile-displayphoto-shrink_800_800/0/1617540661467?e=1637193600&v=beta&t=knPBEeE-08XjR3NVcpnyYJy6ot-lInpRDQlzhSSW72w"),
            ),
          ),
          ListTile(
            title: Text("Account"),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Email"),
            leading: Icon(Icons.email),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
