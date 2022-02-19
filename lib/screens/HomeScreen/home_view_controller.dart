import 'package:get/get.dart';

class HomeViewController extends GetxController {
  /// tv

  var appName = '';
  var username = 'shatil24';
  var userId = '110';
  var userBalance = 1200;
  var userDataList = [];

  @override
  void onInit() {
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
