
import 'package:flutter/material.dart';
import 'package:recipe_app/const/static.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardingPart extends StatelessWidget {
  const OnBoardingPart({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Image.asset(
                onBoardingList[index].image,
                width: double.infinity,
                height: 80.sp,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                onBoardingList[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                onBoardingList[index].body,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff545454)),
              ),
            ],
          );
        });
  }
}
