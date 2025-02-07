
import 'package:flutter/material.dart';
import 'package:meal/model/category.dart';
import 'package:meal/widgets/category_item.dart';
import 'package:meal/widgets/data.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});



    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Meal App"),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return category_item(x: categories[index]);

      },itemCount:categories.length)

      
    );
  }
}
