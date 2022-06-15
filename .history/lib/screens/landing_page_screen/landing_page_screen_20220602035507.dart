import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/novade.dart';
import 'package:flutter_application_1/provider/novadeProvider.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_four_widget.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_one_widget.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_three_widget.dart';
import 'package:flutter_application_1/screens/landing_page_screen/widgets/section_two_widget.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Novade novade = Provider.of<NovadeProvider>(context, listen: false).novade!;
    return SingleChildScrollView(
      child: Column(
        children: [
          //! Section 1
          SectionOne(
            sectionOneBackgroundImage: novade.sectionOneBackgroundImage,
            sectionOneDescription: novade.sectionOneDescription,
            sectionOneHeader: novade.sectionOneHeader,
          ),
          //! Section 2
          SectionTwo(
            sectionTwoBackgroundImage: novade.sectionTwoBackgroundImage,
            sectionTwoHeader: novade.sectionTwoHeader,
            sectionTwoImageFeature: novade.sectionTwoImageFeature,
          ),
          //! Section 3
          const SectionThree(),
          //! Section 4
          SectionFour(
            sectionThreeDescription: novade.sectionThreeDescription,
            sectionThreeHeader: novade.sectionThreeHeader,
            sectionThreeImageFeatureOne: novade.sectionThreeImageFeatureOne,
            sectionThreeImageFeatureTwo: novade.sectionThreeImageFeatureTwo,
            sectionThreeSubHeaderOne: novade.sectionThreeSubHeaderOne,
            sectionThreeSubHeaderTwo: novade.sectionThreeImageFeatureTwo,
          ),
        ],
      ),
    );
  }
}
