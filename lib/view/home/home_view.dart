import 'package:flutter/material.dart';

import './components/drawer_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(title: const Text("")),
      body: const Center(),
    );
  }
}
