import 'package:flutter/material.dart';
import 'package:meal/model/meals.dart';
import 'package:meal/screens/meal_screendetail.dart';
import 'package:meal/widgets/data.dart';
import 'package:meal/widgets/meal_item.dart';
class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = ModalRoute
        .of(context)!
        .settings
        .arguments as Map<String, dynamic>;
    String id = data["2"];
    List<meal> MealFilter = meals.where((i) {
      return i.categoryNumber.contains(id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(data["1"]),
          centerTitle: true,

        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Mealitem(image: MealFilter[index].imageurl,
              name: MealFilter[index].title,
              id: MealFilter[index].id);
        }, itemCount: MealFilter.length,

        )
    );
  }
}
