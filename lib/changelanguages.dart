import 'package:flutter/material.dart';
import 'package:flutter_getx/controller.dart';
import 'package:get/get.dart';

class ChangeLan extends StatelessWidget {
  const ChangeLan({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Scaffold(
      // backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text('title'.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            Obx(
              () => Switch(
                value: controller.darkmode.value,
                onChanged: (value) {
                  controller.setdarkmode(value);
                },
              ),
            ),
            InkWell(
              onTap: () {
                Get.defaultDialog(
                    title: 'selectlan'.tr,
                    titlePadding: const EdgeInsets.only(top: 15, bottom: 10),
                    content: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.updateLocale(const Locale('en', 'US'));
                            Get.back();
                          },
                          child: const Text(
                            'English',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Get.updateLocale(const Locale('gu', 'IND'));
                            Get.back();
                          },
                          child: const Text(
                            'Gujarati',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Get.updateLocale(const Locale('hin', 'IND'));
                            Get.back();
                          },
                          child: const Text(
                            'Hindi',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ));
              },
              child: Card(
                // color: Colors.lightBlue.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'selectlan'.tr,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              // color: Colors.lightBlue.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'name'.tr,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              // color: Colors.lightBlue.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'body'.tr,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
