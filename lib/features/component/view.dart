import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/core/app_images/app_images.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/widgets/widgets/custom_appbar.dart';
import 'package:glovvr/widgets/widgets/custom_scaffold.dart';
import 'package:glovvr/widgets/widgets/custom_text.dart';
part 'units/body.dart';

class ComponentsView extends StatefulWidget {
  const ComponentsView({Key? key}) : super(key: key);

  @override
  State<ComponentsView> createState() => _ComponentsViewState();
}

class _ComponentsViewState extends State<ComponentsView> {
  @override
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              CustomAppbar(
                title: 'Components',
                color: Colors.white,
                raduis: 0,
              ),
              SizedBox(
                height: 22.h,
              ),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
