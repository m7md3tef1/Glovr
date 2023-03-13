import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/widgets/widgets/custom_appbar.dart';
import 'package:glovvr/widgets/widgets/custom_text.dart';
import 'package:line_icons/line_icons.dart';
import '../../core/data/local/cacheHelper.dart';
import '../../core/keys/keys.dart';
import '../../core/validator/validator.dart';
import '../home/view.dart';
part 'units/form.dart';

class TeamWorkView extends StatelessWidget {
  TeamWorkView({Key? key}) : super(key: key);
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
              title: 'TEAM MEMBERS',
              color: Colors.transparent,
              scaffoldKey: passScaffoldKey,
            ),
            Expanded(child: form()),
          ],
        ),
      ),
    );
  }
}
