import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe_model.dart';
import 'package:recipe_app/service/recipe.api.dart';
import 'package:recipe_app/widgets/recipe_card.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({Key? key}) : super(key: key);

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  RecipeApi recipeApi = RecipeApi();

  List<RecipeModel> recipes=[];
  bool isLoading=true;

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
     body: isLoading
         ? const Center(
         child: CircularProgressIndicator(
           color: Color(0xffFE724C),
         )
     )
         :
     ListView.builder(
      // itemCount: recipes.length,
       itemBuilder: (context,index){
         return RecipeCard(
           recipeModel: RecipeModel(name: '', image: 'image', description: ''),
         );
       },
     )
    );
  }
}
