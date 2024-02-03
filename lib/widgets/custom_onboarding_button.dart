import 'package:flutter/material.dart';
import 'package:recipe_app/screens/recipes_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomOnBoardingButtons extends StatelessWidget {
  const CustomOnBoardingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) =>
                const RecipesPage(recipeName: 'chicken'),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Skip',
              style: TextStyle(
                  color: const Color(0xff545454),
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor:const Color(0xffFF1616),

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Next',
                style: TextStyle(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
