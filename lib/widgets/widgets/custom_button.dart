import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/color_manager/color_manager.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  var function;
  String? text;
  double? width;
  double? height;

  var color;
  var colorborder;
  var colortext;
  double? font;
  var icon;
  CustomButton(
      {Key? key,
      this.function,
      this.colorborder,
      this.colortext,
      required this.text,
      this.font,
      this.width,
      this.height,
      this.icon,
      this.color = ColorManager.yellow})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
          width: width ?? 1.sw,
          height: height ?? 48.h,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: colorborder ?? Colors.transparent)),
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(icon),
                Expanded(
                  child: CustomText(
                    text: text,
                    align: TextAlign.center,
                    color: colortext ?? Colors.black,
                    fontSize: font ?? 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ))),
    );
  }
}
