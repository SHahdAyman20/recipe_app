
import 'package:flutter/material.dart';
import 'package:recipe_app/const/static.dart';

class OnBoardingDotsController extends StatelessWidget {
  const OnBoardingDotsController({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onBoardingList.length,
              (index) => AnimatedContainer(
            margin: const EdgeInsets.all(10),
            duration: const Duration(seconds: 1),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: const Color(0xffFF1616),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}
