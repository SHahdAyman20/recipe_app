import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:recipe_app/const/static.dart';
import 'package:recipe_app/model/onboarding_model.dart';
import 'package:recipe_app/screens/recipes_page.dart';
import 'package:recipe_app/widgets/custom_onboarding_button.dart';
import 'package:recipe_app/widgets/onboarding.dart';
import 'package:recipe_app/widgets/onboarding_dots_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffE8EFFD),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnBoardingPart(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OnBoardingDotsController(),
                 CustomOnBoardingButtons()
              ],
            )
          ],
        ),
      ),
    );
  }
}
