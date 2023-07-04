import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hire_dorm/src/constants/sizes.dart';
import 'package:hire_dorm/src/constants/text_strings.dart';
import 'package:hire_dorm/src/features/authentication/controllers/otp_controller.dart';
class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    var otpController = Get.put(OTPController());
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(thisDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(thisOtpTitle, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),
            Text(thisOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
            const SizedBox(height: 30.0,),
            Text("$thisOtpMessage waseem@gmail.com", textAlign: TextAlign.center,),
            const SizedBox(height: 20.0,),

            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              keyboardType: TextInputType.number,
              onSubmit: (code){
                otp = code;
                OTPController.instance.verifyOTP(otp);
              },
            ),
            const SizedBox(height: 20.0,),
            SizedBox(

              child: ElevatedButton(onPressed: (){
                OTPController.instance.verifyOTP(otp);
              }, child: const Text(thisNext),),
            )

          ],
        ),
      ),
    );
  }
}