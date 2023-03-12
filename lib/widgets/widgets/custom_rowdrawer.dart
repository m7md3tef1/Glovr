import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/core/router/router.dart';

class CustomRowDrawer extends StatelessWidget {
  CustomRowDrawer({
    Key? key,
    required this.text,
    this.ontap,
    this.image,
    this.navigatename,
  }) : super(key: key);
  String text;

  var image;
  var navigatename;
  var ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){
          MagicRouter.navigateAndPopUntilFirstPage(navigatename);
        },
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 8.r, right: 8.r),
                      child: SvgPicture.asset(
                        image,
                        height: 40.sp,
                        width: 40.sp,
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: ColorManager.darkGrey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
