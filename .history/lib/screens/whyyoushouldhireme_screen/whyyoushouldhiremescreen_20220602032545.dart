import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/testimonialProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/testimonials.dart'
    as testimonial_model;
import 'widget/testimonial_widget.dart';

class WHYYOUSHOULDHIREMEPAGE extends StatelessWidget {
  const WHYYOUSHOULDHIREMEPAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<testimonial_model.Testimonials> testimonials =
        Provider.of<TestimonialProvider>(context, listen: false).testimonials;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PageView(
            children: testimonials
                .map((e) => Testimonials(
                    name: e.name,
                    profilePictureUrl: e.profilePictureUrl,
                    position: e.position,
                    description: e.description
                        .replaceAll('canât', "can't")
                        .replaceAll('youâll', "you'll")
                        .replaceAll('Iâd', "I'll")))
                .toList(),
          ),
        ),
      ),
    );
  }
}
