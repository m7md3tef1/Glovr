import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';

import '../../core/app_images/app_images.dart';
import '../../core/router/router.dart';
import '../../features/home/view.dart';
import 'custom_text.dart';

class CustomAppbar extends StatelessWidget {
  String title;
  var font;
  var icon;
  GlobalKey<ScaffoldState>? scaffoldKey;
  bool? hideImage;
  CustomAppbar(
      {Key? key,
      required this.title,
      this.icon,
      this.hideImage,
      this.font,
      this.scaffoldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            color: ColorManager.secondaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        height: 70.h,
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.sp),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: InkWell(
                          onTap: () {
                            print('clicked');
                            if (scaffoldKey != null) {
                              print('clicked2');

                              scaffoldKey!.currentState!.openDrawer();
                            } else {
                              Home.scaffoldStateKey.currentState!.openDrawer();
                            }
                          },
                          child: const Icon(
                            Icons.menu,
                            size: 25,
                          )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: CustomText(
                          hideImage: hideImage,
                          text: title,
                          align: TextAlign.center,
                          fontSize: font ?? 21.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
