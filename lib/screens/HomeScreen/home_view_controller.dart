import 'package:get/get.dart';

class HomeViewController extends GetxController {
  /// tv

  var appName = '';
  String userFirstnme = '';
  var username = 'shatil24'.obs;
  var userId = '110'.obs;
  var userBalance = 1200.obs;
  var userDataList = [].obs;

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
