import 'package:flutter/material.dart';
import 'package:recipe_app/screens/opening_screen.dart';
import 'package:recipe_app/service/recipe.api.dart';

void main() {
  RecipeApi().getRecipe(recipeName: 'meat');
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}
