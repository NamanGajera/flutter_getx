// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_getx/changelanguages.dart';
import 'package:flutter_getx/homescreen.dart';
import 'package:flutter_getx/languages.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const flutter_getx());
}

class flutter_getx extends StatelessWidget {
  const flutter_getx({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: languages(),
      locale: Locale('en', 'US'),
      // for default language
      fallbackLocale: Locale('en', 'US'),
      home: const ChangeLan(),
    );
  }
}
