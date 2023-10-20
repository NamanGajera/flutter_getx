import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx/ImageController.dart';
import 'package:get/get.dart';

class ImagePick extends StatelessWidget {
  const ImagePick({super.key});

  @override
  Widget build(BuildContext context) {
    ImageController imagecontroller = Get.put(ImageController());
    return Scaffold(
      appBar: AppBar(
        title: Text('ImagePicker'),
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: imagecontroller.imagepath.isNotEmpty
                    ? FileImage(File(imagecontroller.imagepath.toString()))
                    : null,
              ),
            ),
            TextButton(
              onPressed: () {
                imagecontroller.getimage();
              },
              child: Text('Select Image'),
            ),
          ],
        ),
      ),
    );
  }
}
