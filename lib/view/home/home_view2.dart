// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:get/instance_manager.dart';
// import 'package:recordy/feature/lang/locale_keys.g.dart';
// import 'package:recordy/view/home/controller/tab_controller.dart';

// import './components/drawer_widget.dart';
// import './components/tab_bar_widget.dart';
// import '../../core/extension/context_extension.dart';

// class HomeView extends StatelessWidget {
//   HomeView({Key? key}) : super(key: key);

//   final TabBarController tabBarController = Get.put(TabBarController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const DrawerWidget(),
//       appBar: AppBar(
//         title: const Text(
//           "Recordy",
//           textAlign: TextAlign.center,
//         ),
//       ),
//       body: DefaultTabController(
//         initialIndex: tabBarController.currentIndex.value,
//         animationDuration: const Duration(milliseconds: 400),
//         length: 4,
//         child: ListView(
//           shrinkWrap: true,
//           physics: const ClampingScrollPhysics(),
//           children: [
//             Obx(
//               () {
//                 return TabBar(
//                   isScrollable: true,
//                   padding: EdgeInsets.symmetric(
//                     vertical: context.height(0.015),
//                   ),
//                   indicatorColor: Colors.black.withOpacity(0),
//                   indicatorSize: TabBarIndicatorSize.label,
//                   onTap: (value) => tabBarController.changeIndex(value),
//                   unselectedLabelColor: Colors.black,
//                   tabs: [
//                     TabBarWidget(
//                       text: LocaleKeys.video.tr(),
//                       iconData: CupertinoIcons.video_camera_solid,
//                       color: (tabBarController.currentIndex.value == 0)
//                           ? context.theme.primaryColor
//                           : Colors.white,
//                     ),
//                     TabBarWidget(
//                       text: LocaleKeys.image.tr(),
//                       iconData: CupertinoIcons.photo,
//                       color: (tabBarController.currentIndex.value == 1)
//                           ? context.theme.primaryColor
//                           : Colors.white,
//                     ),
//                     TabBarWidget(
//                       text: LocaleKeys.edit.tr(),
//                       iconData: CupertinoIcons.doc,
//                       color: (tabBarController.currentIndex.value == 2)
//                           ? context.theme.primaryColor
//                           : Colors.white,
//                     ),
//                     TabBarWidget(
//                       text: LocaleKeys.setting.tr(),
//                       iconData: CupertinoIcons.photo,
//                       color: (tabBarController.currentIndex.value == 3)
//                           ? context.theme.primaryColor
//                           : Colors.white,
//                     ),
//                   ],
//                 );
//               },
//             ),
//             SizedBox(
//               height: context.height(0.78),
//               child: const TabBarView(
//                 physics: NeverScrollableScrollPhysics(),
//                 children: [
//                   Text("data1"),
//                   Text("data2"),
//                   Text("data2"),
//                   Text("data3"),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
