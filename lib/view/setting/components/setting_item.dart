import 'package:flutter/material.dart';

import '../../../core/extension/context_extension.dart';

class SettingItem extends StatelessWidget {
  final String text;
  final Widget icon;
  final Function onTap;
  final String data;

  const SettingItem({
    Key? key,
    required this.text,
    this.icon = const Icon(
      Icons.arrow_forward_ios_rounded,
      color: Colors.grey,
    ),
    required this.onTap,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: context.height(0.08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: context.textTheme.titleSmall,
                ),
                Text(
                  data,
                  style: context.textTheme.subtitle2!.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          icon,
        ],
      ),
    );
  }
}
