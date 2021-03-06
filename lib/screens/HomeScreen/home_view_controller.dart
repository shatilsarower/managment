import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  String userFirstName = '';
  var appName = ''.obs;
  var username = ''.obs;
  var userId = 0.obs;
  var userBalance = 0.0.obs;
  var userDataList = [].obs;

  /// (.obs) = .obs makes any variable observable.
  /// So if we make any change to this variable this will effect/change automatically  all over the UI.
  /// And it should be use in the dynamic(var) variable.

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
    ];
    if (kDebugMode) {
      print("Class Name$runtimeType method name : onInit");
    }
    // _changeMyData();
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

  void _changeMyData() async {
    await Future.delayed(const Duration(seconds: 4));
    // userDataList.value.add('New SMS');
    appName.value = 'Sarower';

    for (var i = 0; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      userDataList.add('New SMS $i');
    }

    Get.snackbar(
      'Success',
      'Data insert successful',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void callBottomSheet() {
    Get.bottomSheet(
      Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.purple,
            ),
            Container(
              color: Colors.cyanAccent,
              height: 70,
              width: double.infinity,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}

///  dispose()
///  onClose()
///  onInit()
///  These are lifecycle method.
