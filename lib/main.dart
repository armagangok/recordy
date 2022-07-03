import 'package:flutter/material.dart';

import './core/initilization/init_app.dart';
import './view/home/home_view.dart';

void main() async => await initApp();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
