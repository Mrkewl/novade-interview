import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/landing_page_screen/landing_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Novade Solutions',
        home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

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
                            Text('This is why you should hire me'),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RecommendationPage(),
                                    ),
                                  );
                                },
                                child: Text('Click Here To Know More'))
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

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C5603AQHAqB2BF5CGvg/profile-displayphoto-shrink_100_100/0/1602049921869?e=1659571200&v=beta&t=CceyjtL4GNkmuQFYlo-rjMG0AuRhJs1jPPL-apX_Nd8'),
              ),
              Text(
                '''I had the opportunity to work with Jazsley when I joined AnXing Tech as an intern. We were grouped together to work on a new eCommerce application. Working with Jazsley has been a great experience. He is very talented, easy to get along with and a real team player. He has also been a great coach and supported me when I started my journey as a Junior Mobile Developer. 
What sets Jazz apart from other developers is his can-do attitude. During my time working with him, he has always been the one willingly taking up the most challenging tasks at hand. Jazsley is also approaching new tasks with a very positive mindset, you’ll never hear him say that something is impossible or can’t be done. He has also proven multiple times that he can deliver. It is very rare to come across someone who is acting so calmly and controlled under stressful project situations. Jazsley is also investing a lot of his private time to build his personal projects and staying up to date on the latest techniques in software development. After mastering Flutter, he has become proficient in building backend APIs using Django while he also learned about setting up and managing his own cloud infrastructure.
So for any company out there that needs a talented and driven Full Stack Developer with a can-do-attitude, Jazz is your guy.''',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
