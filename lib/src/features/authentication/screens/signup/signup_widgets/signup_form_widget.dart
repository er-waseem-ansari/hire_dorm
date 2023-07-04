import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hire_dorm/src/features/authentication/controllers/signup_controller.dart';
import 'package:hire_dorm/src/features/authentication/forget_password/forget_password_otp/otp_screen.dart';
import 'package:hire_dorm/src/features/authentication/models/user_model.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();


    return Container(
      padding: const EdgeInsets.symmetric(vertical: thisFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text(thisFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(
              height: thisFormHeight - 10,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(thisEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: thisFormHeight - 10,
            ),
            TextFormField(
              controller: controller.phoneNo,
              maxLength: 13,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                counter: SizedBox.shrink(),
                label: Text(thisPhoneNo),
                prefixIcon: Icon(Icons.dialpad_outlined),
              ),
            ),
            const SizedBox(
              height: thisFormHeight - 10,
            ),
            TextFormField(
              controller: controller.password,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text(thisPassword),
                prefixIcon: Icon(Icons.lock_outlined),
              ),
            ),
            const SizedBox(
              height: thisFormHeight - 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                    // {
                    //   SignUpController.instance
                    //       .phoneAuthentication(controller.phoneNo.text.trim());
                    //   Get.to(() => const OTPScreen());
                    // }
                    final user = UserModel(email: controller.email.text.trim(),
                        password: controller.password.text.trim(),
                        fullName: controller.fullName.text.trim(),
                        phoneNo: controller.phoneNo.text.trim()
                    );
                    SignUpController.instance.createUser(user);


                  }
                },
                child: Text(thisSignUp.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
