import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recordy/core/controller/radio_controller.dart';
import 'package:recordy/feature/export/export.dart';

import './components/setting_item.dart';
import '../../core/components/dialog_widget.dart';

class SettingView extends StatelessWidget {
  SettingView({Key? key}) : super(key: key);

  final ResolutionController resolutionController =
      Get.put(ResolutionController());
  final OrientationController orientationController =
      Get.put(OrientationController());

  final BitrateController bitrateController = Get.put(BitrateController());
  final FpsController fpsController = Get.put(FpsController());

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
                onTap: () => Get.dialog(ChooseDialog(
                  radioController: resolutionController,
                )),
              ),
              SettingItem(
                text: LocaleKeys.bitRate.tr(),
                data: "4.5 bit",
                onTap: () => Get.dialog(ChooseDialog(
                  radioController: bitrateController,
                )),
              ),
              SettingItem(
                text: LocaleKeys.fps.tr(),
                data: "25s",
                onTap: () => Get.dialog(ChooseDialog(
                  radioController: fpsController,
                )),
              ),
              SettingItem(
                text: LocaleKeys.orientation.tr(),
                data: "Auto",
                onTap: () => Get.dialog(ChooseDialog(
                  radioController: orientationController,
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
