import 'package:flutter/material.dart';

class UnderConstructionPage extends StatefulWidget {
  const UnderConstructionPage({super.key});

  @override
  State<UnderConstructionPage> createState() => _UnderConstructionPageState();
}

class _UnderConstructionPageState extends State<UnderConstructionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('U n d e r    C o n s t r u c t i o n'),
        centerTitle: true,
      ),
      body: Image.asset("assets/images/lego_under_construction.jpg", fit: BoxFit.cover, height: double.infinity, width: double.infinity,),
    );
  }
}
