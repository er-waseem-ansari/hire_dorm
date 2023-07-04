import 'package:flutter/material.dart';
import 'package:hire_dorm/src/constants/image_strings.dart';
import 'package:hire_dorm/src/constants/sizes.dart';
import 'package:hire_dorm/src/constants/text_strings.dart';
import '../../../../common_widgets/form/form_header_widget.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

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
                  subTitle: thisForgetPhoneSubTitle,
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
                              label: Text(thisPhone),
                              hintText: thisPhone,
                              prefixIcon: Icon(Icons.dialpad_outlined)
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(thisNext)))

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
