import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hire_dorm/src/constants/colors.dart';
import 'package:hire_dorm/src/constants/sizes.dart';
import 'package:hire_dorm/src/constants/text_strings.dart';
import 'package:hire_dorm/src/features/authentication/screens/login/login_screen.dart';
import 'package:hire_dorm/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../constants/image_strings.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      // backgroundColor: isDarkMode ? thisSecondaryColor : thisPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(thisDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(thisWelcomeScreenImage1),height: height * 0.6,),
            Column(
              children: [
                Text(thisWelcomeTitle,style: Theme.of(context).textTheme.headline5,),
                Text(
                  thisWelcomeSubTitle,
                  style:
                  Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,

                ),
              ],
            ),
            
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () => Get.to(()=> const LoginScreen()),
                        child: Text(thisLogIn.toUpperCase())
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                        },
                        child: Text(thisSignUp.toUpperCase())
                    ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}