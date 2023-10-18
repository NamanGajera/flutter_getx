import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 100),
          Card(
            child: ListTile(
              title: const Text('Getx Dialog'),
              subtitle: const Text('GetxDialogAlert'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete chat',
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  middleText: 'Are you sure want to delete',
                  textConfirm: 'yes',
                  textCancel: 'no',
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Getx Bottom Sheet'),
              subtitle: const Text('GetxBottomSheet'),
              onTap: () {
                Get.bottomSheet(Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text('Change Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar(
          'First',
          'Snakbar',
        );
      }),
    );
  }
}
