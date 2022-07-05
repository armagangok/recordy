import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../feature/export/export.dart';
import '../controller/radio_controller.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.height(1);
    final width = context.width(1);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
      child: Dialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        // backgroundColor: const Color(0xff252525),
        child: Padding(
          padding: EdgeInsets.all(width * 0.045),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                CupertinoIcons.info_circle_fill,
                color: Color(0xff606060),
              ),
              SizedBox(height: height * 0.022),
              const AutoSizeText(
                "Are your sure you want discard your changes ?",
                // style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: height * 0.022),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * 0.25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.dialogRed,
                      ),
                      onPressed: () {},
                      child: const AutoSizeText(
                        "Discard",
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.dialogGreen),
                      onPressed: () => Get.back(),
                      child: const AutoSizeText(
                        "Keep",
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChooseDialog extends StatelessWidget {
  ChooseDialog({Key? key}) : super(key: key);

  final RadioController radioController = Get.put(RadioController());

  @override
  Widget build(BuildContext context) {
    final height = context.height(1);
    final width = context.width(1);

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
      child: Dialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Padding(
          padding: EdgeInsets.all(width * 0.045),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Obx(
                    () {
                      return buildItem(
                        Resolution.values[index],
                        radioController.a.value,
                      );
                    },
                  );
                }),
                separatorBuilder: (context, index) =>
                    SizedBox(height: context.height(0.005)),
                itemCount: Resolution.values.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(Resolution resolution1, groupValue) {
    return ListTile(
      title: Text(resolution[resolution1.name]!),
      leading: Radio(
        activeColor: Colors.amber,
        value: resolution1,
        groupValue: groupValue,
        toggleable: true,
        onChanged: (dynamic val) {
          radioController.changeValue(val!);
        },
      ),
    );
  }
}































              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(
              //       width: width * 0.25,
              //       child: ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //           primary: AppColors.dialogRed,
              //         ),
              //         onPressed: () {},
              //         child: const AutoSizeText(
              //           "Cancel",
              //           maxLines: 1,
              //         ),
              //       ),
              //     ),
              //     SizedBox(
              //       width: width * 0.25,
              //       child: ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //             primary: AppColors.dialogGreen),
              //         onPressed: () => Get.back(),
              //         child: const AutoSizeText(
              //           "OK",
              //           maxLines: 1,
              //         ),
              //       ),
              //     ),
              //   ],
              // )