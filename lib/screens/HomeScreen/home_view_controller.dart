import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  String userFirstName = '';
  var appName = ''.obs;
  var username = ''.obs;
  var userId = 0.obs;
  var userBalance = 0.0.obs;
  var userDataList = [].obs;

  @override
  void onInit() {
    appName.value = 'Home Screen';
    username.value = 'Sarower Murshed Shatil';
    userId.value = 110;
    userBalance.value = 120.89;
    userDataList.value = [
      'Shatil',
      'Hasib',
      'Sazzad',
      'Mohammad',
      110,
      [1, 2, 3, 4],
    ];
    print("Class Name$runtimeType method name : onInit");
    super.onInit();
  }

  @override
  void onClose() {
    if (kDebugMode) {
      print("Class Name$runtimeType method name : onClose");
    }
    super.onClose();
  }

  @override
  void dispose() {
    if (kDebugMode) {
      print("Class Name$runtimeType method name : dispose");
    }
    super.dispose();

    username.close();
    userId.close();
  }
}
