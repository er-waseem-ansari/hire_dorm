import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hire_dorm/src/constants/image_strings.dart';
import 'package:hire_dorm/src/constants/sizes.dart';
import 'package:hire_dorm/src/constants/text_strings.dart';
import 'package:hire_dorm/src/features/authentication/forget_password/forget_password_otp/otp_screen.dart';
import '../../../../common_widgets/form/form_header_widget.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(thisDefaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: thisDefaultSize * 4,
                ),
                const FormHeaderWidget(
                  image: thisForgetPasswordImage,
                  title: thisForgetPassword,
                  subTitle: thisForgetMailSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: thisFormHeight,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(thisEmail),
                          hintText: thisEmail,
                          prefixIcon: Icon(Icons.mail_outline_rounded)),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(()=> const OTPScreen());
                            }, child: const Text(thisNext)))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
