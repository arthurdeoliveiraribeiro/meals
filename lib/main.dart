import 'package:flutter/material.dart';
import 'screens/settings_screens.dart';

import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import './screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';
import 'models/meal.dart';
import 'data/dummy_data.dart';
import 'models/settings.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Meal> _availableMeals = DUMMY_MEALS;

  void _filterMeals(Settings settings){
    setState(() {
      _availableMeals = DUMMY_MEALS.where((meal){
        final filterGluten = settings.isGlutenFree && meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && meal.isLactoseFree;
        final filterVegan = settings.isVegan && meal.isVegan;
        final filterVegetarian = settings.isVegetarian && meal.isVegetarian;
        //Quando o filtro for verdadeiro quer dizer que a comida que não tiver isso some
         return !filterGluten && !filterVegetarian && !filterVegan && !filterLactose;
         
      }).toList();
    });
    //Função para filtrar 
  }

  
   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          )
        )
      ),
      //home: CategoriesScreen(),
      routes: {
        AppRoutes. HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(_availableMeals),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS:(ctx) => SettingsScreen(_filterMeals),//chamei a função filtrar 


      


      },
    );
  }
}
 