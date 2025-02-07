import 'package:meal/model/category.dart';
import 'package:meal/model/meals.dart';

 List<category>  categories =  [

  category(id: "c1", name: "Chinese", image: "images/chinese.jpg"),
  category(id: "c2", name: "Indian", image: "images/indian.jpg"),
  category(id: "c3", name: "Oriental Meals", image: "images/oriental.jpg"),
  category(id: "c4", name: "Pasta", image: "images/pasta.jpg"),
  category(id: "c5", name: "sandwich", image: "images/sand.jpg"),
  category(id: "c6", name: "SaLads", image: "images/salad.jpg"),
  category(id: "c7", name: "RICE DISHES", image: "images/Rice.jpg"),
  category(id: "c8", name: "DESSERT", image: "images/desatr.jpg"),
];
  List<meal> meals = [
  meal(
      id: "m1",
      title: "LAMP CHOPS",
      imageurl: "images/lampchops.jpg",
      salary: "150",
      time: "35",
      description: "Fillet Steak round 275gm,topped with bron pepper sauce served with your choice of 2sides",
      categoryNumber: "c3"),
  meal(
      id: "m2",
      title: "BUTTER CHICKEN",
      imageurl: "images/butterchicken.jpg",
      salary: "90",
      time: "25",
      description: "",
      categoryNumber: "c2"),
  meal(
      id: "m3",
      title: "ALFREDO",
      imageurl: "images/alfredo.jpg",
      salary: "60",
      time: "25",
      description: "",
      categoryNumber: "c4"),
  meal(
      id: "m4",
      title: "steak",
      imageurl: "images/steak.jpg",
      salary: "150",
      time: "30",
      description: "",
      categoryNumber: "c3"),
  meal(id: "m5", title: "Smoked Cheesy ", imageurl: "images/smoked_cheesy.jpg", salary: "90", time: "25", description: "", categoryNumber: "c7"),
  meal(id: "m6", title: "Lamp Biryani", imageurl: "images/lamp_biryani.jpg", salary: "90", time: "30", description: "", categoryNumber: "c2"),
  meal(id: "m7", title: "ShiSh Tawook Rice", imageurl: "images/shish_Tawook.jpg", salary: "99", time: "30", description: "", categoryNumber: "c7"),
  meal(id: "m8", title: "Lamp shank", imageurl: "images/lamp_shank.jpg", salary: "130", time: "35", description: "", categoryNumber: "c3")
];
