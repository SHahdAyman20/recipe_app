import 'package:flutter/material.dart';
import 'package:recipe_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:recipe_app/service/recipe.api.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  RecipeApi().getRecipe(recipeName: 'meat');
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OnBoardingScreen(),
        );
      },
    );
  }
}
