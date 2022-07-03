import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/extension/context_extension.dart';
import '../../../feature/lang/locale_keys.g.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> menuItems = [
      MenuItem(
        title: LocaleKeys.rateUs.tr(),
        iconData: CupertinoIcons.star,
        onTap: () {},
      ),
      MenuItem(
          title: LocaleKeys.sendFeedback.tr(),
          iconData: CupertinoIcons.bubble_left,
          onTap: () {}),
      MenuItem(
          title: LocaleKeys.share.tr(),
          iconData: CupertinoIcons.link,
          onTap: () {}),
      MenuItem(
          title: LocaleKeys.language.tr(),
          iconData: CupertinoIcons.globe,
          onTap: () {}),
    ];

    return Drawer(
      width: context.width(0.75),
      child: Column(
        children: [
          SizedBox(height: context.height(0.05)),
          const Icon(
            CupertinoIcons.camera_viewfinder,
            size: 75,
          ),
          AutoSizeText(
            "Recordy",
            style: context.textTheme.headline4,
            maxLines: 1,
          ),
          AutoSizeText(
            "`User-friendly recording app`",
            style: context.textTheme.bodySmall!
                .copyWith(fontStyle: FontStyle.italic),
            maxLines: 1,
          ),
          SizedBox(height: context.height(0.05)),
          ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: menuItems.length,
            itemBuilder: (context, index) => menuItems[index],
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final IconData iconData;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => onTap(),
      leading: Icon(
        iconData,
        color: Colors.blue,
        size: context.height(0.04),
      ),
    );
  }
}
