import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    Key? key,
    required this.sectionTwoBackgroundImage,
  }) : super(key: key);
  final String sectionTwoBackgroundImage;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                        launchUrlString(
                            'https://www.novade.net/roundtable-webinar-managing-construction-safety-compliance-in-digital-age/');
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.lightGreen,
                        child: const Center(
                          child: Text(
                            'Watch Now',
                            style: TextStyle(color: Colors.white, fontSize: 24),
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
    );
  }
}
