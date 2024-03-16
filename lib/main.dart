import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Markdown Doc",
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      getPages: AppPages.routes,
    ),
  );
}
