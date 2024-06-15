import 'package:flutter/material.dart';
import 'package:warikoo_app/bottom_nav/bottom_nav.dart';
import 'package:warikoo_app/screens/home_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Codie Monk'),
              accountEmail: Text('codie.monk@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.grey.shade600
              ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNav(mIndex: 0))),
          ),
          ListTile(
            leading: Icon(Icons.menu_book_sharp),
            title: Text('Books'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav(mIndex: 1))),
          ),
          ListTile(
            leading: Icon(Icons.list_alt_sharp),
            title: Text('Courses'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav(mIndex: 2))),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav(mIndex: 3)));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav(mIndex: 0))),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage())),
          )
        ],
      ),
    );
  }
}
