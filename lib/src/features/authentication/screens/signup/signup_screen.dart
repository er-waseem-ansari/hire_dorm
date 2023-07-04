import 'package:flutter/material.dart';
import 'package:hire_dorm/src/constants/sizes.dart';
import 'package:hire_dorm/src/features/authentication/screens/signup/signup_widgets/signup_footer_widget.dart';
import 'package:hire_dorm/src/features/authentication/screens/signup/signup_widgets/signup_form_widget.dart';
import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(thisDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                    image: thisWelcomeScreenImage1,
                    title: thisSignUpTitle,
                    subTitle: thisSignUpSubTitle),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


