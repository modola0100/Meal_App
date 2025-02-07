import 'package:flutter/material.dart';
import 'package:meal/screens/home_screen.dart';
import 'package:meal/screens/meal_screen.dart';
import 'package:meal/screens/meal_screendetail.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        "s2":(context)=>MealScreen(),
        "s3":(context)=>mealDetail(),
      },
      home: HomeScreen(),
    );
  }
}
