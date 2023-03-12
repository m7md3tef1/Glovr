import 'package:flutter/material.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/core/router/router.dart';
import 'package:glovvr/widgets/widgets/custom_text.dart';


class NotLogged extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35, top: 5),
      child: InkWell(
        onTap: () {
        //  MagicRouter.navigateTo(RecoverPage());
        },
        child: CustomText(
          text: 'Can\'t log in ?',
          color: ColorManager.secondaryColor,
          textDecoration: TextDecoration.underline,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
