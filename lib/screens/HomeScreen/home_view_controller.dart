import 'package:get/get.dart';

class HomeViewController extends GetxController {
  /// tv

  var appName = '';
  String userFirstName = '';

  var username = ''.obs;
  var userId = 0.obs;
  var userBalance = 0.obs;
  var userDataList = [].obs;

  @override
  void onInit() {
    appName = '';

    print("Class Name$runtimeType method name : onInit");
    super.onInit();
  }

  @override
  void onClose() {
    print("Class Name$runtimeType method name : onClose");
    super.onClose();
  }

  @override
  void dispose() {
    print("Class Name$runtimeType method name : dispose");
    super.dispose();
  }
}
