import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../lang/locale_keys.g.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: ,
      appBar: AppBar(
        title: Text(
          LocaleKeys.resolution.tr(),
        ),
      ),
      body: const Center(),
    );
  }
}
