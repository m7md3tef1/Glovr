import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/core/app_images/app_images.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/widgets/widgets/custom_appbar.dart';
import 'package:glovvr/widgets/widgets/custom_scaffold.dart';

part 'units/body.dart';

class GalleryView extends StatefulWidget {
   const GalleryView({Key? key}) : super(key: key);

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
 @override

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CustomAppbar(title: 'Gallery',color: Colors.white,),
            SizedBox(
              height: 22.h,
            ),
            Expanded(child:
            Body())
          ],
        ),
      ),
    );
  }
}
