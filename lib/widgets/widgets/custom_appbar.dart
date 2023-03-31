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
  var color;
  var icon;
  bool? icons =true;
  double? raduis;
  GlobalKey<ScaffoldState>? scaffoldKey;
  bool? hideImage;
  CustomAppbar(
      {Key? key,
      required this.title,
      this.icon,
        this.icons,
        this.color,
        this.raduis,
      this.hideImage,
      this.font,
      this.scaffoldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration:  BoxDecoration(
          color:color ?? ColorManager.secondaryColor,

          borderRadius:  BorderRadius.only(

              bottomLeft:raduis ==null? const Radius.circular(0):Radius.circular(raduis!),
              bottomRight: raduis==null ? const Radius.circular(0):Radius.circular(raduis!),)),
      height: 90.h,
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.only(top: 12.r),
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icons==false?Container()
                  :Padding(
                    padding:  EdgeInsets.only(left: 30.r),
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
    );
  }
}
