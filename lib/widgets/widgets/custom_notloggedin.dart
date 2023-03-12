import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/color_manager/color_manager.dart';
import '../../core/router/router.dart';
import '../../core/widgets/custom_card.dart';
import '../../core/widgets/custom_card_title.dart';
import '../../../../widgets/widgets/custom_button.dart';
import 'custom_text.dart';

class CustomNotLoggedIn extends StatelessWidget {
  const CustomNotLoggedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: CustomCard(
          widget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.sp),
            child: Column(
              children: [
                SizedBox(
                  height: 18.h,
                ),
                CustomCardTitle(
                  text: 'Not Logged IN',
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 135.h,
                      width: 1.sw,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(253, 197, 47, 0.3),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: CustomText(
                            align: TextAlign.center,
                            text: "you  must log in first",
                            fontSize: 16.sp,
                            textHeight: 1.5,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF664D03),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 27.h, top: 27.h),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButton(
                      text: 'Login',
                      icon: Icons.add,
                      color: ColorManager.yellow,
                      function: () {
                       // MagicRouter.navigateTo(Login());
                      },
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
