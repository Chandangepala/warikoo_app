import 'package:flutter/material.dart';

import '../nav_bar/nav_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
          child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      )),
    );
  }
}
