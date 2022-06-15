import 'package:flutter/material.dart';

class SectionFour extends StatelessWidget {
  const SectionFour({
    Key? key,
    required this.sectionThreeHeader,
    required this.sectionThreeSubHeaderOne,
    required this.sectionThreeImageFeatureOne,
    required this.sectionThreeDescription,
    required this.sectionThreeSubHeaderTwo,
    required this.sectionThreeImageFeatureTwo,
  }) : super(key: key);
  final String sectionThreeHeader;
  final String sectionThreeSubHeaderOne;
  final String sectionThreeImageFeatureOne;
  final String sectionThreeDescription;
  final String sectionThreeSubHeaderTwo;
  final String sectionThreeImageFeatureTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                sectionThreeHeader,
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
            Text(
              sectionThreeSubHeaderOne,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Image.network(sectionThreeImageFeatureOne),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                sectionThreeDescription,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const Spacer(),
            Text(
              sectionThreeSubHeaderTwo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Image.network(sectionThreeImageFeatureTwo)
          ],
        ),
      ),
    );
  }
}
