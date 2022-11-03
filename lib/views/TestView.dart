import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webtest/controllers/TestController.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test")),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(15),
              child: Obx(() =>
                  Text(Get.find<TestController>().title.value ?? "hello")))
        ],
      ),
    );
  }
}
