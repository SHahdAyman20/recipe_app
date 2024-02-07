import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe_model.dart';
import 'package:recipe_app/service/recipe.api.dart';
import 'package:recipe_app/widgets/custom_app_bar.dart';
import 'package:recipe_app/widgets/custom_text_field.dart';
import 'package:recipe_app/widgets/recipe_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RecipesPage extends StatefulWidget {
  final String recipeName;

  const RecipesPage({Key? key, required this.recipeName}) : super(key: key);

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  final recipeApi = RecipeApi();
  List<RecipeDetails> recipe = [];
  final recipeCategoryController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        onPressed: () {
          showAlertDialog();
        },
      ),
      body: isLoading
          ? const Center(
              child:
                  CircularProgressIndicator(
                    color: Color(0xffFF1616),
                  ), // Display circular progress indicator while loading
            )
          : ListView.builder(
              itemCount: recipe.length,
              itemBuilder: (context, index) {
                final recipee = recipe[index];
                return RecipeCard(
                  recipeDetails: RecipeDetails(
                    title: recipee.title,
                    image: "https:${recipee.image}",
                    ingredients: recipee.ingredients,
                    instructions: recipee.instructions,
                  ),
                );
              },
            ),
    );
  }

  void showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Recipe Category: '),
          content: CustomTextField(
            type: TextInputType.text,
            controller: recipeCategoryController,
          ),
          actions: [
            Center(
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    final category = recipeCategoryController.text;
                    updateRecipes(category);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 5.h),
                      backgroundColor: const Color(0xffFF1616)),
                  child: const Icon(
                    Icons.search_off,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void fetchRecipes() async {
    setState(() {
      isLoading = true; // Set isLoading to true before fetching recipes
    });

    final recipeList = await recipeApi.getRecipe(recipeName: widget.recipeName);
    setState(() {
      recipe = recipeList;
      isLoading = false; // Set isLoading to false after fetching recipes
    });
  }

  void updateRecipes(String category) async {
    final recipeList = await recipeApi.getRecipe(recipeName: category);
    setState(() {
      recipe = recipeList;
    });
  }
}
