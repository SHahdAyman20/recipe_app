import 'package:flutter/material.dart';
import 'package:recipe_app/screens/opening_screen.dart';
import 'package:recipe_app/screens/recipe_description.dart';
import 'package:recipe_app/screens/recipes_page.dart';

void main() {
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
