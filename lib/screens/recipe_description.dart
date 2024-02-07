import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe_model.dart';

class RecipeDescription extends StatelessWidget {
  RecipeDetails recipeDetails;

  RecipeDescription({Key? key, required this.recipeDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.36,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('${recipeDetails.image}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.33,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                children: [
                  // Recipe Description
                  Text(
                    '${recipeDetails.title} ',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 3,
                    thickness: 2,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'ingredients ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Recipe Ingredients
                  if (recipeDetails.ingredients != null)
                    ...recipeDetails.ingredients!.toJson().entries.map((entry) {
                      if (entry.value != null) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  '●  ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '${entry.value}',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                             Divider(
                              color: Colors.grey[600],
                              thickness: 2,
                              height: 20,
                            ),
                          ],
                        );
                      } else {
                        return const SizedBox(); // Return an empty SizedBox if the ingredient is null
                      }
                    }).toList(),
                  // Recipe Instructions
                  const Text(
                    'Instructions',
                    textAlign: TextAlign.left,
                    style:  TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    '${recipeDetails.instructions}',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                       // fontStyle: FontStyle.italic
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
