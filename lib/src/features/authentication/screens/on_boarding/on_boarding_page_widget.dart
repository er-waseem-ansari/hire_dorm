import 'package:flutter/material.dart';
import '../../models/model_on_boarding.dart';


class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key ? key,
    required this.model,
  }) : super(key : key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(30),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: size.height*0.45,
            width: double.infinity,
            child: Image(
                image: AssetImage(model.image),
                height: size.height * 0.45,
            ),
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black),


              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),

          Container(
            child: Text(
              model.counterText,
              style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(height: 80.0,)
        ],
      ),

    );
  }
}