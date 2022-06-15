import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/testimonialProvider.dart';

import 'package:flutter_application_1/screens/landing_page_screen/landing_page_screen.dart';
import 'package:flutter_application_1/screens/whyyoushouldhireme_screen/whyyoushouldhiremescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => TestimonialProvider(),
          )
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Novade Solutions',
          home: MainPage(),
        ));
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    Provider.of<TestimonialProvider>(context, listen: false).getTestimonial();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Image.network(
              'https://storage.googleapis.com/kaggle-avatars/images/7541547-gr.jpg'),
          onPressed: () => {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      content: SizedBox(
                        height: 100,
                        width: 100,
                        child: Column(
                          children: [
                            const Text('This is why you should hire me'),
                            ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         const WHYYOUSHOULDHIREMEPAGE(),
                                  //   ),
                                  // );
                                  Provider.of<TestimonialProvider>(context,
                                          listen: false)
                                      .getTestimonial();
                                },
                                child: const Text('Click Here To Know More'))
                          ],
                        ),
                      ),
                    ))
          },
        ),
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
        body: const LandingPage());
  }
}
