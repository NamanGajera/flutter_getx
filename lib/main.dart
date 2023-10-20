// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_getx/ImagePick.dart';
import 'package:flutter_getx/changelanguages.dart';
import 'package:flutter_getx/controller.dart';
import 'package:flutter_getx/homescreen.dart';
import 'package:flutter_getx/languages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const flutter_getx());
}

class flutter_getx extends StatelessWidget {
  const flutter_getx({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Obx(() => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: languages(),
          locale: Locale('en', 'US'),
          // for default language
          fallbackLocale: const Locale('en', 'US'),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            cardColor: Colors.black87,
            scaffoldBackgroundColor: Colors.black54,
          ),
          theme: ThemeData(
            brightness: Brightness.light,
            cardColor: Colors.white38,
            scaffoldBackgroundColor: Colors.grey[200],
          ),
          themeMode:
              controller.darkmode.value ? ThemeMode.dark : ThemeMode.light,
          home: const ImagePick(),
        ));
  }
}
