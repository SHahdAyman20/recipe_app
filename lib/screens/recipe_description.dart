import 'package:flutter/material.dart';
import 'package:recipe_app/json_data/recipeModel.dart';

class RecipeDescription extends StatelessWidget {

  RecipeDetails recipeDetails ;

  RecipeDescription({Key? key, required this.recipeDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: const BackButton(
            color: Colors.black, // <-- SEE HERE
          ),
          title: const Text(
            'Recipes Details',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: const Color(0xffFE724C),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        '${recipeDetails.image}',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding:const EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35,
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Center(
                        child: Text(
                          '${recipeDetails.title} Description \n',
                          textAlign: TextAlign.center,
                          style:const TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Text(
                        '${recipeDetails.ingredients}',
                        textAlign: TextAlign.left,
                        style:const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                         // fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        '${recipeDetails.instructions}',
                        textAlign: TextAlign.left,
                        style:const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          // fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        );
  }
}
