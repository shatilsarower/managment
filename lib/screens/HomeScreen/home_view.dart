import 'package:flutter/material.dart';

/// In this page all the UI elements are going to created. import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SMS'),
      ),
    );
  }
}
