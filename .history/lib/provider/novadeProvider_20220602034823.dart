import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/novade.dart';
import 'package:http/http.dart';

import '../helper/http.dart';

class NovadeProvider with ChangeNotifier {
  Novade? novade;

  void getNovadeInfo() async {
    Response response = await Api().getData('${Api.url}testimonial');
    novade = Novade.fromJson(response.body);
    log(novade.toString());
    notifyListeners();
  }
}
