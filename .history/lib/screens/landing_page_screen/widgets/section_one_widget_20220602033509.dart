import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({
    Key? key,
    required this.sectionOneHeader,
    required this.sectionOneBackgroundImage,
    required this.sectionOneDescription,
  }) : super(key: key);
  final String sectionOneHeader;
  final String sectionOneBackgroundImage;
  final String sectionOneDescription;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
          fit: BoxFit.cover,
          image: NetworkImage(sectionOneBackgroundImage),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: 16.0,
            bottom: 16,
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 5),
        child: Column(
          children: [
            const Spacer(),
            Text(
              sectionOneHeader,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Software to improve quality, safety and productivity in the field',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                launchUrlString('https://www.novade.net/contact/');
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.lightGreen,
                child: const Center(
                    child: Text(
                  'SCHEDULE A DEMO',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                launchUrlString('https://www.novade.net/pricing/');
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white)),
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                child: const Center(
                    child: Text(
                  'SEE PRICING PLANS',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
