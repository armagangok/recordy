import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

import './components/drawer_widget.dart';
import './controller/tab_controller.dart';
import '../../core/extension/context_extension.dart';
import '../../feature/lang/locale_keys.g.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final TabBarController tabBarController = Get.put(TabBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Recordy",
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: context.height(0.12),
            width: context.height(1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                createExpandedItem(
                  CupertinoIcons.video_camera,
                  LocaleKeys.video.tr(),
                  context,
                  0,
                  () {
                    tabBarController.changeIndex(0);
                  },
                ),
                createExpandedItem(
                  CupertinoIcons.photo_on_rectangle,
                  LocaleKeys.image.tr(),
                  context,
                  1,
                  () {
                    tabBarController.changeIndex(1);
                  },
                ),
                createExpandedItem(
                  CupertinoIcons.scissors_alt,
                  LocaleKeys.edit.tr(),
                  context,
                  2,
                  () {
                    tabBarController.changeIndex(2);
                  },
                ),
                createExpandedItem(
                  CupertinoIcons.settings,
                  LocaleKeys.setting.tr(),
                  context,
                  3,
                  () {
                    tabBarController.changeIndex(3);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    tabBarController.currentIndex.value == 0
                        ? const Text("Data 0")
                        : const SizedBox(),
                    tabBarController.currentIndex.value == 1
                        ? const Text("Data 1")
                        : const SizedBox(),
                    tabBarController.currentIndex.value == 2
                        ? const Text("Data 2")
                        : const SizedBox(),
                    tabBarController.currentIndex.value == 3
                        ? const Text("Data 3")
                        : const SizedBox(),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  //

  Widget createExpandedItem(
    IconData icon,
    String text,
    BuildContext context,
    int clickedNumber,
    final Function onTap,
  ) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          height: context.height(0.08),
          color: Colors.blue,
          child: Obx(
            () {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: clickedNumber == tabBarController.currentIndex.value
                        ? Colors.white
                        : Colors.black,
                  ),
                  AutoSizeText(
                    text,
                    maxLines: 1,
                    style: TextStyle(
                      color:
                          clickedNumber == tabBarController.currentIndex.value
                              ? Colors.white
                              : Colors.black,
                    ),
                  ),
                  // clickedNumber == tabBarController.currentIndex.value
                  //     ? Container(
                  //         width: context.width(0.15),
                  //         height: 2,
                  //         color: Colors.white,
                  //       )
                  //     : const Center(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
