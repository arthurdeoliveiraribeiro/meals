
import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import '../models/category.dart';

import '../components/meal_item.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {

  


  final List<Meal> meals;//lista de comidas 

  const CategoriesMealsScreen(this.meals);
  
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    
    final categoryMeals = meals.where((meal) {
      //where filtrando
      return meal.categories.contains(category.id);
      //Se o id estive dentro dessa categoria vai retornar verdadeiro
      //se não tive ele limpa, então esse função é para mostrar os que tem id iguais

    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index){
          return MealItem(categoryMeals[index]);
        }
        
        )
    );
  }
}