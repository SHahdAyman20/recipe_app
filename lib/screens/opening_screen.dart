import 'package:flutter/material.dart';
import 'package:recipe_app/screens/recipes_page.dart';
import 'package:recipe_app/service/recipe.api.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;




    return Scaffold(
      backgroundColor: Color(0xffFE724C),
      body:
          Column(
            children: [
               SizedBox(
                width:screenWidth,
                height:screenHeight*0.62,
                child: Image.asset('assets/home.png'),
              ),
              const Text(
                  'Wanna Cook Something Delicious?',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
               height: 30,
                child: Image.asset('assets/line.png'),
              ),
              const Text(
                'Let’s try our best recipe\n simple to made and tasty',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute (
                        builder: (BuildContext context) => const RecipesPage(),
                      ),
                    );
                  },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(
                    screenWidth*.6,
                      screenHeight*.07
                    )
                  )
                ),
                  child:const  Text(
                      'GET STARTED',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),
              ),
            ],
          ),

    );
  }
}
