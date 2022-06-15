import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/landing_page_screen/landing_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Novade Solutions',
        home: const MainPage());
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
                            const Text('This is why you should hire me'),
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

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PageView(
            children: const [
              Testimonials(
                name: 'Stephan Koch',
                description:
                    '''I had the opportunity to work with Jazsley when I joined AnXing Tech as an intern. We were grouped together to work on a new eCommerce application. Working with Jazsley has been a great experience. He is very talented, easy to get along with and a real team player. He has also been a great coach and supported me when I started my journey as a Junior Mobile Developer. 
What sets Jazz apart from other developers is his can-do attitude. During my time working with him, he has always been the one willingly taking up the most challenging tasks at hand. Jazsley is also approaching new tasks with a very positive mindset, you’ll never hear him say that something is impossible or can’t be done. He has also proven multiple times that he can deliver. It is very rare to come across someone who is acting so calmly and controlled under stressful project situations. Jazsley is also investing a lot of his private time to build his personal projects and staying up to date on the latest techniques in software development. After mastering Flutter, he has become proficient in building backend APIs using Django while he also learned about setting up and managing his own cloud infrastructure.
So for any company out there that needs a talented and driven Full Stack Developer with a can-do-attitude, Jazz is your guy.''',
                profilePictureUrl:
                    'https://media-exp1.licdn.com/dms/image/C5603AQHAqB2BF5CGvg/profile-displayphoto-shrink_100_100/0/1602049921869?e=1659571200&v=beta&t=CceyjtL4GNkmuQFYlo-rjMG0AuRhJs1jPPL-apX_Nd8',
                position: 'Scrum Master | Flutter Developer',
              ),
              Testimonials(
                name: 'Stephan Koch',
                description:
                    '''I had the opportunity to work with Jazsley when I joined AnXing Tech as an intern. We were grouped together to work on a new eCommerce application. Working with Jazsley has been a great experience. He is very talented, easy to get along with and a real team player. He has also been a great coach and supported me when I started my journey as a Junior Mobile Developer. 
What sets Jazz apart from other developers is his can-do attitude. During my time working with him, he has always been the one willingly taking up the most challenging tasks at hand. Jazsley is also approaching new tasks with a very positive mindset, you’ll never hear him say that something is impossible or can’t be done. He has also proven multiple times that he can deliver. It is very rare to come across someone who is acting so calmly and controlled under stressful project situations. Jazsley is also investing a lot of his private time to build his personal projects and staying up to date on the latest techniques in software development. After mastering Flutter, he has become proficient in building backend APIs using Django while he also learned about setting up and managing his own cloud infrastructure.
So for any company out there that needs a talented and driven Full Stack Developer with a can-do-attitude, Jazz is your guy.''',
                profilePictureUrl:
                    'https://media-exp1.licdn.com/dms/image/C5603AQHAqB2BF5CGvg/profile-displayphoto-shrink_100_100/0/1602049921869?e=1659571200&v=beta&t=CceyjtL4GNkmuQFYlo-rjMG0AuRhJs1jPPL-apX_Nd8',
                position: 'Scrum Master | Flutter Developer',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Testimonials extends StatelessWidget {
  const Testimonials({
    Key? key,
    required this.name,
    required this.profilePictureUrl,
    required this.position,
    required this.description,
  }) : super(key: key);
  final String name;
  final String profilePictureUrl;
  final String position;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(profilePictureUrl),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  position,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          description,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }
}
