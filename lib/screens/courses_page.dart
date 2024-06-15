import 'package:flutter/material.dart';
import 'package:warikoo_app/nav_bar/nav_bar.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: Center(
        child: Text('Courses Page', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold), ),
      ),
    );
  }
}
