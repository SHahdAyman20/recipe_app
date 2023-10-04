import 'package:flutter/material.dart';
import 'package:recipe_app/screens/recipe_description.dart';

class RecipeCard extends StatelessWidget {

  final String title;
  final String image;

  const RecipeCard({super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>const RecipeDescription(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8
        ),
        width: screenWidth,
        height: screenHeight*.25,
      decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: NetworkImage('https://www.aspicyperspective.com/wp-content/uploads/2019/02/japanese-clear-soup-recipe-12.jpg'),
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
                  'soup',
                  style: const TextStyle(
                    fontSize: 20,
                    color:Colors.white
                  ),
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
