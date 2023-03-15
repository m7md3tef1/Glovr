import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/widgets/widgets/custom_appbar.dart';
import 'package:glovvr/widgets/widgets/custom_scaffold.dart';
import '../../core/router/router.dart';

part 'units/body.dart';

class HowView extends StatefulWidget {
  const HowView({Key? key}) : super(key: key);

  @override
  State<HowView> createState() => _HowViewState();
}

class _HowViewState extends State<HowView> {
  @override
  Widget build(BuildContext context) {
    return   CustomScaffold(
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CustomAppbar(title: 'How it work',color: Colors.white,),
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

