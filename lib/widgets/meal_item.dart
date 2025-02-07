import 'package:flutter/material.dart';
class Mealitem extends StatelessWidget {
  const Mealitem({super.key, required this.image, required this.name, required this.id});

  final String image;
  final String name;
  final String id;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomLeft: Radius.circular(30))
        ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,

        children: [
          Container(
            width: 150,
            height: 200,
              decoration: BoxDecoration(

                image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)
              ),
          ),
          Text(name),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, "s3",arguments: id);
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      ),
    );



  }
}
