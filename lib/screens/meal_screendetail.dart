import 'package:flutter/material.dart';
import 'package:meal/model/meals.dart';
import 'package:meal/widgets/data.dart';
class mealDetail extends StatelessWidget {
  const mealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    String id =ModalRoute.of(context)!.settings.arguments as String;
    meal mealss=meals.firstWhere((value){
return value.id==id;
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(mealss.title),
        centerTitle: true,
      ),
      body:
         Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                        image: AssetImage(mealss.imageurl))
                  ),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height:50 ,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Column(
                  children: [
                    Icon(Icons.favorite,color: Colors.amber,),
                    Text("favorite",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),

                  ],

                ),
                  Column(
                    children: [
                      Icon(Icons.edit,color: Colors.amber,),
                      Text("edit",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),

                    ],

                  ),
                  Column(
                    children: [
                      Icon(Icons.share,color: Colors.amber,),
                      Text("share",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),

                    ],

                  )


                ],
              )
              ,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.yellowAccent, width: 3.0),
    ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Shawarma is a popular Middle Eastern dish made of thinly sliced marinated meat, usually beef, chicken, or lamb, stacked in a cone-like shape and slowly roasted on a vertical rotisserie. The meat is shaved off in thin slices and served in a warm pita or flatbread, often accompanied by fresh vegetables, garlic sauce, tahini, or hummus. Known for its rich flavors and juicy texture."),


                    ],
                  ),
                ),
              ),




            ),


                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("price",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          Text(mealss.salary,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  




              





          ],
        ),


    );
  }
}
