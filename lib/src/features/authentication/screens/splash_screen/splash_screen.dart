import 'package:flutter/material.dart';
import 'package:hire_dorm/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super (key:key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Text("HireDorm",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "Roboto",
      ),)),
    );
  }

  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
  }
}