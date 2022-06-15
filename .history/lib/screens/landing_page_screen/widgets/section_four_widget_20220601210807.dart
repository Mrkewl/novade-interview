import 'package:flutter/material.dart';

class SectionFour extends StatelessWidget {
  const SectionFour({Key? key}) : super(key: key);

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
            const Spacer(),
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
    );
  }
}
