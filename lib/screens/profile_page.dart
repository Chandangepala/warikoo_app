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
        backgroundColor: Colors.white,
        drawer: NavBar(),
        appBar: AppBar(
          title: Text(
            'P R O F I L E',
            style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Codie Monk',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 4,
                          child: Text(
                            'Phone: ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )),
                      Expanded(
                          flex: 6,
                          child: Text(
                            '9988445511',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 4,
                          child: Text(
                            'Email: ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )),
                      Expanded(
                          flex: 6,
                          child: Text(
                            'codiemonk@gmail.com',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300),
                          )),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 9,
                          child: Text(
                            'My Courses',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )),
                      Expanded(flex: 1, child: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 9,
                          child: Text(
                            'Community',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )),
                      Expanded(flex: 1, child: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
