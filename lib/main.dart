// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_getx/homescreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const flutter_getx());
}

class flutter_getx extends StatelessWidget {
  const flutter_getx({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
