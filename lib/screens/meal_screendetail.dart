import 'package:flutter/material.dart';
import 'package:meal/model/meals.dart';
import 'package:meal/widgets/data.dart';


class MealDetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String id =ModalRoute.of(context)!.settings.arguments as String;
    meal mealss=meals.firstWhere((value){
      return value.id==id;
    });

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          mealss.title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                mealss.imageurl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              mealss.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price: ${mealss.salary}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 24),
                    Icon(Icons.star, color: Colors.orange, size: 24),
                    Icon(Icons.star, color: Colors.orange, size: 24),
                    Icon(Icons.star, color: Colors.orange, size: 24),
                    Icon(Icons.star_half, color: Colors.orange, size: 24),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              "Meal Description: This meal is very delicious and made with fresh and healthy ingredients, perfect for any time!",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
