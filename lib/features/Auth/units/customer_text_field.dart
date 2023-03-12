import 'package:flutter/material.dart';

import '../../../core/color_manager/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  var prefixIcon;
  var suffixIcon;
  String? hintText;
  var keyBoardType;
  var controller;
  var validate;
  var function;
  bool? obs;
  double? padding;

  CustomTextFormField(
      {super.key,
      this.obs,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText,
      this.controller,
      this.validate,
      this.function,
      this.keyBoardType,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: TextFormField(
        scrollPadding: EdgeInsets.only(bottom: padding ?? 0),
        validator: validate,
        controller: controller,
        keyboardType: keyBoardType,
        obscureText: obs != null ? true : false,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorManager.yellow, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorManager.lightGrey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: hintText!,

            focusColor: ColorManager.secondaryColor,
            hintStyle: const TextStyle(color: ColorManager.lightGrey,fontWeight: FontWeight.w300)),
      ),
    );
  }
}
