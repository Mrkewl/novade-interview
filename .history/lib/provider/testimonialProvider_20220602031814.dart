// ignore: file_names
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/http.dart';
import 'package:flutter_application_1/models/testimonials.dart';
import 'package:http/http.dart';

class TestimonialProvider with ChangeNotifier {
  List<Testimonials> testimonials = [];

  void getTestimonial() async {
    Response response = await Api().getData('${Api.url}testimonial');
    testimonials = (jsonDecode(response.body) as List)
        .map((e) => Testimonials.fromMap(e))
        .toList();
    log(testimonials.toString());
    notifyListeners();
  }
}
