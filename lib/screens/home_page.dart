import 'package:flutter/material.dart';
import 'package:warikoo_app/nav_bar/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('H O M E', style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              Image.network(
                "https://openthemagazine.com/wp-content/uploads/2023/04/Warikoo1.jpg",
                fit: BoxFit.cover,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.11,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    'awareness is',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito'),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.145,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    'everything',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.21,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    'Make sure all the choices \nyou make in life come from \na point of awareness and not ignorance.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito'),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Text(
              'ankur warikoo',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'warikoo is an Internet Entrepreneur based out of India and is one of India’s top content creators. He is also a bestselling author and conducts courses online as an educator. His aim through his content is to make sure all the choices you make in life come from a point of awareness and not ignorance.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Nunito'),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.work_history,
                  size: 40,
                ),
                title: Text('Entreprenurship',
                    style: TextStyle(
                        fontFamily: 'Nunito', fontWeight: FontWeight.bold)),
                subtitle: Text(
                    'warikoo has been an entrepreneur since 2008, was the founding CEO of Groupon India and cofounded nearbuy.com He is currently working on an education startup.',
                    style: TextStyle(fontFamily: 'Nunito')),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.movie_creation,
                  size: 40,
                ),
                title: Text('Content Creator',
                    style: TextStyle(
                        fontFamily: 'Nunito', fontWeight: FontWeight.bold)),
                subtitle: Text(
                    'warikoo has been creating content since 2005 and has over 10Mn+ followers across all popular social media platforms',
                    style: TextStyle(fontFamily: 'Nunito')),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.border_color_outlined,
                  size: 40,
                ),
                title: Text(
                  'Author',
                  style: TextStyle(
                      fontFamily: 'Nunito', fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    'His first book DO EPIC SHIT went on to hit #1 in India. His second book GET EPIC SHIT DONE also hit #1 in India. He is already working on his third book on money.',
                    style: TextStyle(fontFamily: 'Nunito')),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.wallet_sharp,
                  size: 40,
                ),
                title: Text('Investor',
                    style: TextStyle(
                        fontFamily: 'Nunito', fontWeight: FontWeight.bold)),
                subtitle: Text(
                    'warikoo is an active angel investor in 30+ companies and loves to spend time with first-time entrepreneurs mentoring them.',
                    style: TextStyle(fontFamily: 'Nunito')),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.network(
              "https://i0.wp.com/ankurwarikoo.com/wp-content/uploads/2022/05/Logo_Black_Vector.png?w=662&ssl=1",
              width: 90,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
