import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_four_widget.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_one_widget.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_three_widget.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_two_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //! Section 1
//           SectionOne(
//             sectionOneBackgroundImage: ,
//             sectionOneDescription: ,
//             sectionOneHeader: ,
//           ),
//           //! Section 2
//           SectionTwo(
//             sectionTwoBackgroundImage: ,
//             sectionTwoHeader: ,
//             sectionTwoImageFeature: ,
//           ),
//           //! Section 3
//           SectionThree(),
//           //! Section 4
//           SectionFour(
//             sectionThreeDescription: ,
//             sectionThreeHeader: ,
// sectionThreeImageFeatureOne: ,
// sectionThreeImageFeatureTwo: ,
// sectionThreeSubHeaderOne: ,
//   sectionThreeSubHeaderTwo: ,
//           ),
        ],
      ),
    );
  }
}
