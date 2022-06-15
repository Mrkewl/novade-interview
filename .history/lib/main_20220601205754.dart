import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/section_one_screen.dart';

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
          //! Section 1
          const SectionOne(),
          //! Section 2
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.novade.net/wp-content/uploads/2020/12/Novade-Boustead-Projects-construction-tablet-user.png'))),
            height: MediaQuery.of(context).size.height * 0.65,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
              child: Container(
                color: Colors.blue.shade800.withOpacity(0.9),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Spacer(),
                          Image.network(
                            'https://www.novade.net/wp-content/uploads/2020/03/Novade-Safety-Screens_200319-01-1-980x541.png',
                            fit: BoxFit.fitWidth,
                            scale: 0.5,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 16.0,
                          bottom: 16,
                          left: MediaQuery.of(context).size.width / 6,
                          right: MediaQuery.of(context).size.width / 6),
                      child: Column(
                        children: [
                          const Spacer(),
                          const Text(
                            'Roundtable webinar: Managing construction safety and compliance in the digital age',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('hello');
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2,
                              color: Colors.lightGreen,
                              child: const Center(
                                child: Text(
                                  'Watch Now',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
//! Section 3
          Container(
            margin: const EdgeInsets.symmetric(vertical: 32),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Trusted by the world’s largest companies in the building and infrastructure industry​',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
//! Section 4
          Container(
            margin: const EdgeInsets.symmetric(vertical: 32),
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade100,
            height: MediaQuery.of(context).size.height * 0.98,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Digital transformation from the ground up​​',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade400),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Identify repetitive tasks',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Image.network(
                      'https://www.novade.net/wp-content/uploads/2020/12/Novade-Product-Process_201203-01.png'),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      'Say goodbye to manual forms and lost paperwork',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  const Text(
                    'Digitise your processes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Image.network(
                      'https://www.novade.net/wp-content/uploads/2020/12/Novade-Product-Process_201203-02.png')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
