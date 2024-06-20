import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:warikoo_app/screens/books_page.dart';
import 'package:warikoo_app/screens/courses_page.dart';
import 'package:warikoo_app/screens/home_page.dart';
import 'package:warikoo_app/screens/profile_page.dart';
import 'package:warikoo_app/screens/under_construction.dart';

class BottomNav extends StatefulWidget {
  int mIndex;
  BottomNav({super.key, required this.mIndex});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _selectedPage = widget.mIndex;
  }

  void _navigateBottomBar(int index){
    setState(() {
      _selectedPage = index;
    });
  }
  
  List<Widget> _pages = [
    HomePage(),
    BooksPage(),
    CoursesPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPage],
      bottomNavigationBar: GNav(
        gap: 8,
        textStyle: TextStyle(fontSize: 12),
        onTabChange: _navigateBottomBar,
        tabs: [
            GButton(icon: Icons.home, text: 'Home',),
            GButton(icon: Icons.menu_book_sharp, text: 'Books',),
            GButton(icon: Icons.list_alt_rounded, text: 'Courses',),
            GButton(icon: Icons.person, text: 'Profile',)
      ]),
    );
  }
}
