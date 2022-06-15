import 'package:flutter/material.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
