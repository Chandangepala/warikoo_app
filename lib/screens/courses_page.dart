import 'package:flutter/material.dart';
import 'package:warikoo_app/nav_bar/nav_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  WebViewController webController = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse("https://www.webveda.com/#courses"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('C O U R S E S'),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: webController)
    );
  }
}
