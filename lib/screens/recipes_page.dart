import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe_model.dart';
import 'package:recipe_app/service/recipe.api.dart';
import 'package:recipe_app/widgets/recipe_card.dart';

class RecipesPage extends StatefulWidget {
  final String recipeName;

  const RecipesPage({Key? key, required this.recipeName}) : super(key: key);

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  final recipeApi = RecipeApi();

  //List<Map<String, dynamic>> recipes = [];
  List<RecipeDetails> recipe = [];

  @override
  void initState() {
    super.initState();
    fetchRecipes();
  }

  void fetchRecipes() async {
    final recipeList = await recipeApi.getRecipe(recipeName: widget.recipeName);
    setState(() {
      recipe = recipeList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          foregroundColor: Colors.black,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(
                width: 10,
              ),
              Text(
                'Food Recipes',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          //elevation: 0,
          backgroundColor: const Color(0xffFF1616),
        ),
        body: ListView.builder(
          itemCount: recipe.length,
          itemBuilder: (context, index) {
            final recipee = recipe[index];
            return RecipeCard(
              recipeDetails: RecipeDetails(
                title: recipee.title,
                image: recipee.image,
                ingredients: recipee.ingredients,
                instructions: recipee.instructions,
              ),
            );
          },
        ),);
  }
}
