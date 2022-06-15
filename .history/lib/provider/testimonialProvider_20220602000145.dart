import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/http.dart';
import 'package:flutter_application_1/models/testimonials.dart';

class TestimonialProvider with ChangeNotifier {
  List<Testimonials>? testimonials;

  void getTestimonial() {
    Api().getData(Api.url + '/testimonials');
  }
}
