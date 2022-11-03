import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webtest/controllers/TestController.dart';
import 'package:webtest/views/TestView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Get.put(TestController(), permanent: true);
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<TestController>();
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TestView(),
    );
  }
}
