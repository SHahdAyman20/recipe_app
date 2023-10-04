import 'dart:developer';
import 'package:recipe_app/models/recipe_model.dart';
import 'package:dio/dio.dart';

//this class will provide the food recipe which i will get from internet
class RecipeApi {
  final Dio dio = Dio();

  //the method will get recipe info
  Future<List<RecipeModel>> getRecipes() async {
    try {
      // this get request which take url of api and send response to you
      final response = await dio.get(
        'https://api.edamam.com/search?q=chicken&app_id=91cb67fd&app_key=dc9c20993cf9ad2132f989a75db993a1&from=0&to=100&health=alcohol-free',
      );

      Map<String,dynamic> jsonData= response.data;
      List<dynamic> recipes= jsonData['hits'];
      List<RecipeModel> recipeList=[];
      for(var recipe in recipes){
        RecipeModel recipeModel= RecipeModel.fromJson(recipe);
        recipeList.add(recipeModel);
      }
      return recipeList;

    } catch (e) {
      log(e.toString());
      throw Exception('OOPS There wan an error!\nplease try again later');
    }
  }
}

