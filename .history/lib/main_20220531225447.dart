import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Color(0xff00d084),
              ),
              backgroundColor: Colors.white,
              centerTitle: false,
              title: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Image.network(
                  'https://www.novade.net/wp-content/uploads/2022/02/Novade-Solutions-Logo.png',
                  scale: 2,
                ),
              ),
            ),
            endDrawer: const Drawer(
              backgroundColor: Colors.red,
            ),
            backgroundColor: Colors.white,
            body: const LandingPage()));
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
                fit: BoxFit.cover,
                image: const NetworkImage(
                    'https://www.novade.net/wp-content/uploads/2022/04/Site-Workers-Team-02.jpg'),
              ),
            ),
            child: Column(
              children: [
                const Text(
                  'Next generation digital solutions for site management',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Software to improve quality, safety and productivity in the field',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.green,
                    child: Text('SCHEDULE A DEMO'),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
