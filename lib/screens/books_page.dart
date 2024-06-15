import 'package:flutter/material.dart';

import '../nav_bar/nav_bar.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Books'),
      ),
      body: Center(
        child: Text('Books Page', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
