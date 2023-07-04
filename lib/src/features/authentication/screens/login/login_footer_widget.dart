
import 'package:flutter/material.dart';
import 'package:hire_dorm/src/features/authentication/screens/signup/signup_screen.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: thisFormHeight,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(image: AssetImage(thisGoogleLogoImage),width: 20.0,),
            onPressed: (){},
            label: Text(thisSignInWithGoogle),
          ),
        ),
        const SizedBox(height: thisFormHeight -20 ,),
        TextButton(
          onPressed: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUpScreen()));},
          child: Text.rich(
            TextSpan(
                text: thisAlreadyHaveAnAccount,
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(
                      text: thisSignUp,

                      style: TextStyle(color: Colors.blue))
                ]
            ),
          ),
        ),
      ],
    );
  }
}

