import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import './components/setting_item.dart';
import '../../core/components/dialog_widget.dart';
import '../../core/extension/context_extension.dart';
import '../../feature/lang/locale_keys.g.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.height(1);
    final width = context.width(1);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.width(0.08),
        vertical: context.width(0.08),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.videoSetting.tr(),
            style: context.textTheme.bodyText1!.copyWith(
              color: context.primaryColor,
            ),
          ),
          SizedBox(height: context.height(0.02)),
          ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              SettingItem(
                text: LocaleKeys.resolution.tr(),
                data: "720p",
                onTap: () => Get.dialog(ChooseDialog()),
              ),
              SettingItem(
                text: LocaleKeys.bitRate.tr(),
                data: "4.5 bit",
                onTap: () => Get.dialog(const DialogWidget()),
              ),
              SettingItem(
                text: LocaleKeys.fps.tr(),
                data: "25s",
                onTap: () => Get.dialog(const DialogWidget()),
              ),
              SettingItem(
                text: LocaleKeys.orientation.tr(),
                data: "Auto",
                onTap: () => Get.dialog(const DialogWidget()),
              )
            ],
          ),
        ],
      ),
    );
  }
}
