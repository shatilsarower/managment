import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_view_controller.dart';

/// In this page all the UI elements are going to created.
/// import 'package:flutter/material.dart';
/// UI->>> View(No Logical properties will not present here)

class HomeView extends StatelessWidget {
  final HomeViewController _controller = Get.put(HomeViewController());

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Obx(
          () => Text(_controller.appName.value),
        ),
      ),
      drawer: const Drawer(),
      body: Container(
        child: Obx(
          () => ListView.builder(
            itemCount: _controller.userDataList.length,
            itemBuilder: ((context, index) => ListTile(
                  title: Text(
                    _controller.userDataList[index].toString(),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
