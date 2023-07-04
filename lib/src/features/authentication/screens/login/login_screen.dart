import 'package:flutter/material.dart';
import 'package:hire_dorm/src/common_widgets/form/form_header_widget.dart';
import 'package:hire_dorm/src/constants/image_strings.dart';
import 'package:hire_dorm/src/constants/sizes.dart';
import 'package:hire_dorm/src/constants/text_strings.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(thisDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: thisWelcomeScreenImage1,
                    title: thisLoginTitle,
                    subTitle: thisLoginSubTitle),
                const LoginForm(),
                const LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
