// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/http.dart';
import 'package:flutter_application_1/models/testimonials.dart';
import 'package:http/http.dart';

class TestimonialProvider with ChangeNotifier {
  List<Testimonials>? testimonials;

  Future<void> getTestimonial() async {
    Response response = await Api().getData('${Api.url}testimonial');
    print(response.body);
  }
}
