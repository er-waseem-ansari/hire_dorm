import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hire_dorm/src/features/main_pages/college_selection_screen.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/login_controller.dart';
import '../../forget_password/forget_password_options/forget_password_modal_bottom_sheet.dart';
import '../../forget_password/forget_password_widget/forget_password_button_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LogInController());
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: thisFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: thisEmail,
                hintText: thisEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: thisFormHeight),

            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: thisPassword,
                hintText: thisPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(
              height: thisFormHeight - 20,
            ),

            // Forget password button
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      ForgetPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: const Text(thisForgetPassword))),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      LogInController.instance.loginUser(controller.email.text.trim(), controller.password.text.trim());
                    }
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> CollegeSelectionScreen()));
                  },
                  child: Text(
                    thisLogIn.toUpperCase(),
                  )),
            ),
          ],
        ),
      ),
    );
  }

}

