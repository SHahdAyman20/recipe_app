import 'package:flutter/material.dart';
import 'package:recipe_app/json_data/recipeModel.dart';
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
  List<RecipeDetails> recipe=[];
  bool isLoading=true;

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
  Widget build(BuildContext context)  {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10,),
            Text(
              'Food Recipes',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black
              ),),
          ],
        ),
        //elevation: 0,
       backgroundColor:const Color(0xffFE724C),
      ),
      body: //isLoading
     //     ? const Center(
     //     child: CircularProgressIndicator(
     //       color: Color(0xffFE724C),
     //     )
     // )
     //     :
     ListView.builder(
       itemCount: recipe.length,
       itemBuilder: (context,index){
         final recipee = recipe[index];
          return RecipeCard(
            recipeDetails: RecipeDetails(
              title: recipee.title,
              image: recipee.image
            ),
          );
       },
     )
    );
  }
}
