import 'package:get/get.dart';

class TestController extends GetxController {
  RxnString title = RxnString();
  @override
  void onInit() async {
    print("Init test controller =====");
    await Future.delayed(const Duration(seconds: 5), () {
      title.value = "Welcome";
    });

    super.onInit();
  }

  @override
  void onClose() {
    print("Dispose test controller =====");

    title.close();
    super.onClose();
  }
}
