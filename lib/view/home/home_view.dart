import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './components/drawer_widget.dart';
import './controller/tab_controller.dart';
import '../../feature/export/export.dart';
import '../setting/setting_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final TabBarController tabBarController = Get.put(TabBarController());

  @override
  Widget build(BuildContext context) {
    final height = context.height(1);
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
            color: context.primaryColor,
            height: context.height(0.12),
            width: context.height(1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                createExpandedItem(
                  CupertinoIcons.video_camera,
                  LocaleKeys.video.tr(),
                  height,
                  0,
                  () => tabBarController.changeIndex(0),
                ),
                createExpandedItem(
                  CupertinoIcons.photo_on_rectangle,
                  LocaleKeys.image.tr(),
                  height,
                  1,
                  () => tabBarController.changeIndex(1),
                ),
                createExpandedItem(
                  CupertinoIcons.scissors_alt,
                  LocaleKeys.edit.tr(),
                  height,
                  2,
                  () => tabBarController.changeIndex(2),
                ),
                createExpandedItem(
                  CupertinoIcons.settings,
                  LocaleKeys.setting.tr(),
                  height,
                  3,
                  () => tabBarController.changeIndex(3),
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
                        ? SettingView()
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
    double height,
    int clickedNumber,
    final Function onTap,
  ) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          height: height * 0.08,
          color: Colors.amber,
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
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
