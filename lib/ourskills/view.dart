import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/features/home/view.dart';
import 'package:glovvr/widgets/widgets/custom_appbar.dart';
import 'package:glovvr/widgets/widgets/custom_text.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

part 'units/form.dart';

class OurSkillView extends StatelessWidget {
  OurSkillView({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> passScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const OnDrawer(),
        key: passScaffoldKey,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppbar(
              color: Colors.transparent,
              title: 'OUR SKILLS',
              scaffoldKey: passScaffoldKey,
            ),

            Expanded(
                    child: form()),
          ],
        ),
      ),
    );
  }
}
