import 'package:flutter/material.dart';


PreferredSizeWidget customAppBar({required VoidCallback onPressed}) {
  return AppBar(
    automaticallyImplyLeading: false,
    foregroundColor: Colors.black,
    title: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.restaurant_menu),
        SizedBox(
          width: 10,
        ),
        Text(
          '  Food Recipes',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    //elevation: 0,
    backgroundColor: const Color(0xffFF1616),
    actions: [
      IconButton(
        onPressed: onPressed,
        icon: const Icon(Icons.search),
      ),
    ],
  );
}

