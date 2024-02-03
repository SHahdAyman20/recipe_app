import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe_model.dart';
class RecipeDescription extends StatelessWidget {

  RecipeDetails recipeDetails;
  RecipeDescription({Key? key, required this.recipeDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https:${recipeDetails.image}',
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
             height: MediaQuery.of(context).size.height * 0.7,
              decoration: const BoxDecoration(
                color: Colors.red,

              ),
              child: ListView(
                children: [
                  // recipe Description
                  Center(
                    child: Text(
                      '${recipeDetails.title} Description \n',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  // recipe ingredients
                  if (recipeDetails.ingredients != null)
                    ...recipeDetails.ingredients!.toJson().entries.map((entry) {
                      if (entry.value != null) {
                        return Column(
                          children: [
                            Text(
                              '${entry.value}',
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                // fontWeight: FontWeight.w800,
                              ),
                            ),
                            const Divider(
                              // Add a horizontal line using Divider widget
                              color: Colors.black,
                              thickness: 1,
                              height: 20,
                            ),
                          ],
                        );
                      } else {
                        return const SizedBox(); // Return an empty SizedBox if the ingredient is null
                      }
                    }).toList(),
                  // recipe instructions
                  Text(
                    '${recipeDetails.instructions}',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      // fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
