import 'package:flutter/material.dart';
import 'package:flutter_getx/LoginController.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailcontroller.value,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: controller.passwordcontroller.value,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () {
                controller.loginapi();
              },
              child: Container(
                height: 45,
                color: Colors.grey[200],
                width: double.infinity,
                child: Center(
                  child: Text('Login'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
