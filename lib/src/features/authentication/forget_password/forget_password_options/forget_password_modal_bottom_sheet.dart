import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hire_dorm/src/features/authentication/forget_password/forget_password_mail/forget_password_mail.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../forget_password_phone/forget_password_phone.dart';
import '../forget_password_widget/forget_password_button_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        builder: (context) => Container(
            padding: const EdgeInsets.all(thisDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  thisForgetPasswordTitle,
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  thisForgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ForgetPasswordButtonWidget(
                  buttonIcon: Icons.mail_outline_rounded,
                  subTitle: thisResetViaEmail,
                  title: thisEmail,
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(() => const ForgetPasswordMailScreen());
                  },
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ForgetPasswordButtonWidget(
                  buttonIcon: Icons.mobile_friendly_rounded,
                  subTitle: thisResetViaPhone,
                  title: thisPhoneNo,
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(() => const ForgetPasswordPhoneScreen());
                  },
                ),
              ],
            )));
  }
}
