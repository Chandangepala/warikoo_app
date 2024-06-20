import 'package:flutter/material.dart';
import 'package:warikoo_app/bottom_nav/bottom_nav.dart';
import 'package:warikoo_app/screens/home_page.dart';
import 'package:warikoo_app/screens/under_construction.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            accountName: Text('Codie Monk'),
            accountEmail: Text('codie.monk@gmail.com'),
            decoration: BoxDecoration(color: Colors.grey.shade800),
          ),
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text('My Courses'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => UnderConstructionPage())),
          ),
          ListTile(
            leading: Icon(Icons.menu_book_sharp),
            title: Text('eBooks'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => UnderConstructionPage())),
          ),
          ListTile(
            leading: Icon(Icons.mic_outlined),
            title: Text('Podcast'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => UnderConstructionPage())),
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Newsletter'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UnderConstructionPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.wallpaper),
            title: Text('Wallpaper'),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UnderConstructionPage())),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UnderConstructionPage())),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UnderConstructionPage())),
          )
        ],
      ),
    );
  }
}
