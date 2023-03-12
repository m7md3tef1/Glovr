import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/core/app_images/app_images.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/widgets/widgets/custom_appbar.dart';
import 'package:glovvr/widgets/widgets/custom_scaffold.dart';
import '../../core/router/router.dart';

part 'units/body.dart';

class FeaturesView extends StatefulWidget {
   const FeaturesView({Key? key}) : super(key: key);

  @override
  State<FeaturesView> createState() => _FeaturesViewState();
}

class _FeaturesViewState extends State<FeaturesView> {
 @override

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppbar(title: 'SYSTEM ANALYSIS IMAGE'),
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
