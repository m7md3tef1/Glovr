import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart'
    as v;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/features/Auth/units/cant_login.dart';
import 'package:glovvr/features/Auth/units/card_title.dart';
import 'package:glovvr/features/Auth/units/custom_no_account.dart';
import 'package:glovvr/features/Auth/units/customer_text_field.dart';
import 'package:glovvr/features/Auth/units/logo.dart';
import 'package:glovvr/features/home/view.dart';
import 'package:glovvr/widgets/widgets/custom_appbar.dart';
import 'package:glovvr/widgets/widgets/custom_scaffold.dart';
import 'package:lottie/lottie.dart';

import '../../core/dialoges/toast.dart';
import '../../core/widgets/custom_card.dart';
import '../../core/validator/validator.dart';
import '../../widgets/widgets/custom_button.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return v.KeyboardVisibilityBuilder(
      builder: (context, visible) => Padding(
        padding: EdgeInsets.only(bottom: visible ? .31.sh : 0),
        child: CustomScaffold(
          body: InkWell(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SafeArea(
              child: Column(
                children: [
                  CustomAppbar(
                    title: 'Login',
                    color: Colors.white,
                    hideImage: true,
                    icons: false,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: CustomCard(
                        widget: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Lottie.asset('assets/images/login.json',
                                  height: 300.h),

                              CustomTextFormField(
                                padding: 40.0,
                                hintText: 'Enter E-mail',
                                controller: emailController,
                                validate: Validator.validateEmail,
                              ),
                              CustomTextFormField(
                                padding: 40.0,
                                hintText: 'Enter Password',
                                controller: passwordController,
                                validate: Validator.validatePassword,
                                obs: true,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              // Privacy(VehiclesCubit.get(context).value),
                              const SizedBox(
                                height: 5,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: CustomButton(
                                  function: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const Home();
                                    }));
                                  },
                                  text: 'Login',
                                  color: ColorManager.secondaryColor,
                                ),
                              ),
                              NoAccount(),
                              //     NotLogged()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
