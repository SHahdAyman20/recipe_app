import 'package:flutter/material.dart';
import 'package:recipe_app/screens/recipes_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomOnBoardingButtons extends StatelessWidget {

  const CustomOnBoardingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>
              const RecipesPage(recipeName: 'chicken'),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:const Color(0xffFF1616),
          minimumSize: Size(double.infinity, 9.sp)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Skip',
            style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
