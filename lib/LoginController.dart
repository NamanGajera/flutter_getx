// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;

  void loginapi() async {
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailcontroller.value.text,
        'password': passwordcontroller.value.text,
      });

      var data = jsonDecode(response.body);

      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        Get.snackbar('Login Successfull', 'Congrats');
      } else {
        Get.snackbar('Login failed', data('error'));
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    }
  }
}
