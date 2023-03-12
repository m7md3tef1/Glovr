import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/router/router.dart';
import 'custom_text.dart';

class CustomDialog extends StatelessWidget {
  final String? title;
  final String? desc;
  const CustomDialog({Key? key, this.title, this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Container(
          height: .95.sh,
          width: 1.sw,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.r)),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.r)),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: title,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    InkWell(
                      onTap: () {
                        MagicRouter.pop();
                      },
                      child: Container(
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            border: Border.all(color: Colors.black54)),
                        child: CustomText(
                          text: 'x',
                          color: Colors.black54,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                  child: const Divider(),
                ),
                Expanded(
                    child: Text(
                  desc!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.normal,
                  ),
                )),
                SizedBox(
                  height: 10.sp,
                  child: const Divider(),
                ),
                InkWell(
                  onTap: () {
                    MagicRouter.pop();
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 50.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(4)),
                      child: CustomText(
                        text: 'close',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
