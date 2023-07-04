import 'package:flutter/material.dart';
import 'package:hire_dorm/src/features/authentication/screens/login/login_screen.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';


class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(thisGoogleLogoImage),
              width: 20.0,
            ),
            label: const Text(thisSignInWithGoogle),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));
            }, child: Text.rich(
            TextSpan(
                children: [
                  TextSpan(text:thisAlreadyHaveAccount, style: Theme.of(context).textTheme.bodyText1),
                  TextSpan(text:thisLogIn.toUpperCase())
                ]
            )
        ))
      ],
    );
  }
}