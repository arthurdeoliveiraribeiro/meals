
import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    
    final categoryMeals = DUMMY_MEALS.where((meal) {
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
          return Text(categoryMeals[index].title);
        }
        
        )
    );
  }
}