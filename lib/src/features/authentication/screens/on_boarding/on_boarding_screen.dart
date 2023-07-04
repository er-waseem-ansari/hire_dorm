import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hire_dorm/src/constants/colors.dart';
import 'package:hire_dorm/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:hire_dorm/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            onPageChangeCallback: obController.onPageChangeCallback,
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              // onPressed: () => obController.animateToNextSlide(),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20.0),
                onPrimary: Colors.white,
                primary: Colors.transparent
              ),
              child: Container(
                padding: const EdgeInsets.all((20.0)),
                decoration: const BoxDecoration(
                  color: thisDarkColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.arrow_forward_ios,),

              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey),),
            ),
          ),
          Obx(
            ()=> Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: obController.currentPage.value,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5.0,
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }


}

