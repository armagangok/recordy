// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';

// import '../../../core/extension/context_extension.dart';

// class TabBarWidget extends StatelessWidget {
//   final String text;
//   final Color color;

//   final IconData iconData;

//   const TabBarWidget({
//     Key? key,
//     required this.text,
//     required this.color,
//     required this.iconData,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final h = context.height(1);
//     final w = context.width(1);
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: w * 0.05,
//         vertical: w * 0.04,
//       ),
//       decoration: BoxDecoration(
//         boxShadow: const [
//           BoxShadow(
//             blurRadius: 12,
//             spreadRadius: 0,
//             color: Colors.grey,
//           ),
//         ],
//         borderRadius: const BorderRadius.all(Radius.circular(16.0)),
//         color: color,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Icon(
//             iconData,
//             size: 20,
//           ),
//           AutoSizeText(
//             text,
//             textAlign: TextAlign.center,
//             maxLines: 1,
//             maxFontSize: 12,
//             style: const TextStyle(fontWeight: FontWeight.w400),
//           ),
//         ],
//       ),
//     );
//   }
// }
