import 'package:dio/dio.dart';
import 'package:recipe_app/model/recipe_model.dart';

//this class will provide the food recipe which i will get from internet
class RecipeApi {

  final dio = Dio();

  Future<List<RecipeDetails>> getRecipe({required String recipeName}) async {

    try {
      final response = await dio.get(
        'https://food-recipes-with-images.p.rapidapi.com/',
        options: Options(
            headers: {
              'X-RapidAPI-Key': 'fe0c843eb9msh01a72e0e37cea79p130cc9jsn6f6e93e34e54',
              'X-RapidAPI-Host': 'food-recipes-with-images.p.rapidapi.com'
            }),
        queryParameters: {
          'q': recipeName,
        },
      );
      // final recipeData = response.data as Map<String, dynamic>;
      // final recipeList = [recipeData];
      print('recipe=======${response.data}');
      final recipeData = response.data['d'] as List<dynamic>;
      final recipes = recipeData
          .map((recipe) => RecipeDetails.fromJson(recipe as Map<String, dynamic>))
          .toList();

      return recipes;
      //final recipes = List<Map<String, dynamic>>.from(response.data);
     // return recipeList;
    } catch (error) {
      print('Request failed with error: $error');
      return [];
    }
  }

}


