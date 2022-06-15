import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_four_screen.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_one_screen.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_three_screen.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_two_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //! Section 1
          SectionOne(),
          //! Section 2
          SectionTwo(),
          //! Section 3
          SectionThree(),
          //! Section 4
          SectionFour(),
        ],
      ),
    );
  }
}
