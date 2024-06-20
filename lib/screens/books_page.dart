import 'package:flutter/material.dart';

import '../nav_bar/nav_bar.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {

  var arrBooks = [
    "https://i0.wp.com/ankurwarikoo.com/wp-content/uploads/2022/07/1659009279-1-1.png?resize=1080%2C995&ssl=1",
    "https://i0.wp.com/ankurwarikoo.com/wp-content/uploads/2022/11/Get-Epic-Shit-Done-Book.png?resize=1080%2C996&ssl=1",
    "https://www.makeepicmoney.com/cdn/shop/files/book_1.png?v=1700659394&width=640",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('B O O K S'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: arrBooks.length,
          itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage("${arrBooks[index]}", ), )
            ),
          ),
        );
      })
    );
  }
}
