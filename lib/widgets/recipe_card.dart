import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe_model.dart';
import 'package:recipe_app/screens/recipe_description.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    super.key,
    required this.recipeDetails,
  });

  final RecipeDetails recipeDetails;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        print('---------------->${recipeDetails.ingredients!.s1}');
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RecipeDescription(
              recipeDetails: RecipeDetails(
                id: recipeDetails.id,
                title: recipeDetails.title,
                image: recipeDetails.image,
                ingredients:recipeDetails.ingredients,
                instructions: recipeDetails.instructions,
              ),
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        width: screenWidth,
        height: screenHeight * .25,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.35),
              BlendMode.multiply,
            ),
            image: NetworkImage('${recipeDetails.image}'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  '${recipeDetails.title}',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
