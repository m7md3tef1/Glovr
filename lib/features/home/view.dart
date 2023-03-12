import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glovvr/core/app_images/app_images.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/features/home/states.dart';
import 'package:glovvr/features/testimonial/view.dart';
import 'package:glovvr/widgets/widgets/custom_text.dart';

import '../../core/data/local/cacheHelper.dart';
import '../../core/keys/keys.dart';
import '../../core/router/router.dart';
import '../../widgets/widgets/custom_button.dart';
import '../../widgets/widgets/custom_rowdrawer.dart';
import 'controller.dart';

part 'units/drawer.dart';
part 'units/nav_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  // Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //           title: const Text('Do You want to exit the app?'),
  //           actions: [
  //             Padding(
  //               padding: const EdgeInsets.only(bottom: 8.0),
  //               child: Row(
  //                 children: [
  //                   SizedBox(
  //                     width: 35.sp,
  //                   ),
  //                   Expanded(
  //                       child: CustomButton(
  //                           function: () => Navigator.pop(context, false),
  //                           text: 'No',
  //                           height: 37.sp,
  //                           font: 15)),
  //                   SizedBox(
  //                     width: 35.sp,
  //                   ),
  //                   Expanded(
  //                       child: CustomButton(
  //                     function: () => Navigator.pop(context, true),
  //                     text: 'Yes',
  //                     height: 37.sp,
  //                     font: 15,
  //                   )),
  //                   SizedBox(
  //                     width: 35.sp,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ));
  static GlobalKey<ScaffoldState> scaffoldStateKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const OnDrawer(),
      key: scaffoldStateKey,
      bottomNavigationBar: const _BottomBar(),
      body: BlocConsumer<HomeCubit, HomeStates>(
        listener: (_, s) {},
        builder: (context, s) {
          return HomeCubit.get(context)
              .bottomScreens[HomeCubit.get(context).currentIndex];
        },
      ),
    );
  }
}
