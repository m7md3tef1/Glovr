import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glovvr/features/Auth/units/customer_text_field.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/validator/validator.dart';
import '../../../core/widgets/custom_card.dart';
import '../../../widgets/widgets/custom_appbar.dart';
import '../../../widgets/widgets/custom_button.dart';
import '../../../widgets/widgets/custom_scaffold.dart';
import '../../home/view.dart';

import '../login.dart';
import 'card_title.dart';
import 'logo.dart';

class RecoverPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> uploadProductScaffoldKey =
      GlobalKey<ScaffoldState>();

  RecoverPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: uploadProductScaffoldKey,
        body: SafeArea(
          child: Column(
            children: [
              CustomAppbar(title: 'Recover Password',),
              const SizedBox(
                height: 18,
              ),
              CustomCard(
                widget: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Logo(),
                      TitleText(
                        title: 'Recover Password',
                      ),
                      CustomTextFormField(
                        hintText: 'Enter a valid E-mail',
                        controller: emailController,
                        validate: Validator.validateEmail,
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: CustomButton(
                          function: () {
                            // if (formKey.currentState!.validate()) {
                            //
                            // }
                          },
                          text: 'Send Link',
                          color: ColorManager.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),);
  }
}
