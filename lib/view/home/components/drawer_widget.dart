// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';

// import '../../../core/extension/context_extension.dart';

// class MenuWidget extends StatelessWidget {
//   const MenuWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle? captionText = context.theme.textTheme.caption;
//     final double width = context.getWidth(1);

//     final List<MenuItem> menuItems = [
//       MenuItem(title: LocaleKeys.language.tr()),
//       MenuItem(title: LocaleKeys.video.tr()),
//       MenuItem(title: LocaleKeys.image.tr()),
//       MenuItem(title: LocaleKeys.edit.tr()),
//       MenuItem(title: LocaleKeys.setting.tr()),
//       MenuItem(title: LocaleKeys.entertainment.tr()),
//       MenuItem(title: LocaleKeys.sports.tr()),
//       MenuItem(title: LocaleKeys.discussion.tr()),
//       MenuItem(title: LocaleKeys.notification.tr()),
//       MenuItem(title: LocaleKeys.newsFeedSettings.tr()),
//     ];

//     return Drawer(
//       width: width * (0.85),
//       child: ListView.builder(
//         physics: const ClampingScrollPhysics(),
//         padding: EdgeInsets.zero,
//         itemCount: menuItems.length + 1,
//         itemBuilder: ((context, index) {
//           if (index == 0) {
//             return SizedBox(
//               height: context.height(0.15),
//               child: DrawerHeader(
//                 child: Row(
//                   children: [
//                     Image.asset("assets/img/icon.png"),
//                     SizedBox(width: context.width(0.045)),
//                     Text('News App', style: captionText),
//                   ],
//                 ),
//               ),
//             );
//           } else if (index == menuItems.length) {
//             return Container();
//           } else {
//             return menuItems[index];
//           }
//         }),
//       ),
//     );
//   }
// }

// class MenuItem extends StatelessWidget {
//   const MenuItem({
//     Key? key,
//     required this.title,
//   }) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(title),
//       onTap: () => Get.back(),
//       leading: Icon(
//         Icons.circle,
//         color: Colors.blue,
//         size: context.height(0.04),
//       ),
//     );
//   }
// }
