import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/core/app_images/app_images.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';

import '../../../widgets/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static GlobalKey<ScaffoldState> scaffoldStateKey = GlobalKey<ScaffoldState>();
  List images = [
    AppImages.video1,
    AppImages.video3,
    AppImages.video2,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CustomAppbar(
              title: 'Top Video',
              color: Colors.white,
              raduis: 0,
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                child: SizedBox(
                    height: 0.65.sh,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: ColorManager.greyColor,
                        ),
                        child: ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: images.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Image.asset(images[index]),
                          ),
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
