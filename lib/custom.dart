import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.person,
              text: 'Profil',
              onTap: () {
                Navigator.pushNamed(context, '/profil');
              }),
          _drawerItem(
              icon: Icons.archive,
              text: 'Keterangan',
              onTap: () {
                Navigator.pushNamed(context, '/keterangan');
              }),
          _drawerItem(
            icon: (Icons.logout),
            text: 'LogOut',
            onTap: () => print('Feature Not Added'),
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    accountName: Text(
      'Coinstally News',
      style: TextStyle(color: Colors.black),
    ),
    accountEmail: Text(
      '11 April 2022',
      style: TextStyle(color: Colors.black),
    ),
  );
}

Widget _drawerItem(
    {IconData icon,
    color: Colors.black,
    //required IconData icon,
    String text,
    GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
