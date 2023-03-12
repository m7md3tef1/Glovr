import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/core/app_images/app_images.dart';

import '../../core/color_manager/color_manager.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String? text;
  Color? color;
  double? fontSize;
  var fontWeight;
  var align;
  var height;
  var textHeight;
  var textDirection;
  var width;
  TextDecoration? textDecoration;
  var wordSpacing;
  var letterSpacing;
  bool? hideImage;
  CustomText(
      {Key? key,
      this.hideImage,
      this.textDecoration,
      this.textDirection,
      this.width,
      this.height,
      this.wordSpacing,
      this.letterSpacing,
      this.align,
      this.textHeight,
      required this.text,
      this.color = ColorManager.blackColor,
      this.fontSize,
      this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hideImage == true
                ? Image(
                    image: const AssetImage(
                      AppImages.logo,
                    ),
                    height: 30.h,
                    width: 50.w,
                  )
                : Container(),
            Text(
              '  $text',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: color,
                  height: textHeight,
                  wordSpacing: wordSpacing,
                  letterSpacing: letterSpacing,
                  decoration: textDecoration),
              maxLines: 25,
              textAlign: align,
            ),
          ],
        ),
      ),
    );
  }
}
