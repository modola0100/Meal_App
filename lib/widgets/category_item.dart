import 'package:flutter/material.dart';
import 'package:meal/model/category.dart';
import 'package:meal/widgets/data.dart';
class category_item extends StatelessWidget {

final category x;

  const category_item({super.key, required this.x});





  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:  EdgeInsets.all(15),
      child: ClipRRect(

        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          onTap:(){
            Navigator.pushNamed(context, "s2",arguments: {
              "1":x.name,
              "2":x.id
            });

          },
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            child: Container(
                width: double.infinity,
                height: 50,

                color: Colors.black45,
                child: Center(child: Text(x.name,style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),))),

            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(x.image))
            ),

          ),
        ),
      ),
    );

  }
}
