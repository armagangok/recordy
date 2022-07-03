import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import './view/home/home_view.dart';
import 'core/initilization/initialization.dart';

void main() async => await initApp();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  HomeView(),
    );
  }
}
