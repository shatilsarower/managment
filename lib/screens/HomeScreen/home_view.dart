import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_view_controller.dart';

/// In this page all the UI elements are going to created. import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final HomeViewController _controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetX'),
      ),
      drawer: const Drawer(),
    );
  }
}
