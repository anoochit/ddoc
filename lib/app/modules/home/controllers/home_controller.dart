import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString doc = ''.obs;
  @override
  void onInit() {
    super.onInit();
    _loadDoc();
  }

  _loadDoc() {
    rootBundle.loadString('index.md').then((value) {
      doc.value = value;
    });
  }
}
