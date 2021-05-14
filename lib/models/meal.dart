import 'package:flutter/cupertino.dart';

enum Complexity{
  Simple,
  Medium,
  Difficult,
}

enum Cost{
  //Custo
  Cheap,
  Fair,
  Expensive,
}

class Meal{
  final String id;
  final List<String> categories;
  final title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;//passos
  final int duration;
  final bool isGlutenFree;//sem glutem 
  final bool isLactoseFree;//sem Lactose 
  final bool isVegan;//sem glutem 
  final bool isVegetarian;//sem glutem 
  final Complexity complexity;
  final Cost cost;

 

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.complexity,
    @required this.cost

  });

}