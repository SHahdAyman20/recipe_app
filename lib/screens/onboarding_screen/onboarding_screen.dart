import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/custom_onboarding_button.dart';
import 'package:recipe_app/widgets/onboarding.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardingScreen extends StatefulWidget {
   const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8EFFD),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5.h,),
            const Expanded(
              child: OnBoardingPart(),
            ),
            const CustomOnBoardingButtons(),
          ],
        ),
      ),
    );
  }
}
