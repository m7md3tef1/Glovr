import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart'
    as v;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glovvr/core/color_manager/color_manager.dart';
import 'package:glovvr/features/Auth/units/custom_have_account.dart';
import 'package:glovvr/features/Auth/units/customer_text_field.dart';
import 'package:glovvr/features/Auth/units/profile_image.dart';
import 'package:lottie/lottie.dart';
import '../../core/validator/validator.dart';
import '../../core/widgets/custom_card.dart';
import '../../widgets/widgets/custom_appbar.dart';
import '../../widgets/widgets/custom_button.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController? emailController = TextEditingController();

  TextEditingController? passwordController = TextEditingController();

  TextEditingController? firstNameController = TextEditingController();

  TextEditingController? lastNameController = TextEditingController();

  TextEditingController? phoneController = TextEditingController();

  TextEditingController? addressController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var image;

  @override
  @override
  Widget build(BuildContext context) {
    return v.KeyboardVisibilityBuilder(
        builder: (context, visible) => Padding(
              padding: EdgeInsets.only(bottom: visible ? .31.sh : 0),
              child: Scaffold(
                  body: InkWell(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: SafeArea(
                  child: Column(
                    children: [
                      CustomAppbar(
                        title: 'Sign Up',
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
                                  // ProfileImage(image),
                                  Lottie.asset('assets/images/signUp.json',
                                      height: 300.h),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: CustomTextFormField(
                                        hintText: 'First Name',
                                        controller: firstNameController,
                                        validate: Validator.validateName,
                                      )),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      Expanded(
                                          child: CustomTextFormField(
                                        hintText: 'Last Name',
                                        controller: lastNameController,
                                        validate: Validator.validateName,
                                      )),
                                    ],
                                  ),
                                  CustomTextFormField(
                                    hintText: 'Enter E-mail',
                                    controller: emailController,
                                    validate: Validator.validateEmail,
                                  ),
                                  CustomTextFormField(
                                    hintText: 'Enter Phone Number',
                                    controller: phoneController,
                                    validate: Validator.validateEmpty,
                                  ),
                                  CustomTextFormField(
                                      hintText: 'Enter Address',
                                      controller: addressController,
                                      validate: Validator.validateEmpty),
                                  CustomTextFormField(
                                      hintText: 'Enter Password',
                                      controller: passwordController,
                                      validate: Validator.validatePassword),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  // Privacy(VehiclesCubit.get(context).value),
                                  const SizedBox(
                                    height: 5,
                                  ),

                                  CustomButton(
                                    function: () {
                                      // if (VehiclesCubit.get(context).value == false) {
                                      //   showToast(
                                      //       msg:
                                      //       'You need to agree with the terms and conditions and policies.',
                                      //       state: ToastedStates.ERROR);
                                      // }
                                      // if (formKey.currentState!.validate() &&
                                      //     VehiclesCubit.get(context).value == true) {
                                      //   AuthCubit.get(context).signUp(User(
                                      //       firstName:
                                      //       firstNameController!.text.trim(),
                                      //       lastName: lastNameController!.text.trim(),
                                      //       email: emailController!.text.trim(),
                                      //       contactNumber:
                                      //       phoneController!.text.trim(),
                                      //       profilePicture: image.toString(),
                                      //       password: passwordController!.text.trim(),
                                      //       address: addressController!.text.trim()));
                                      // }
                                    },
                                    text: 'Sign Up',
                                    color: ColorManager.secondaryColor,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  HaveAccount()
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )),
            ));
  }
}
