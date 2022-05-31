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
            color: Colors.red,
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
