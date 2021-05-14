import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {

  
  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context){
/*     Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_){
          //Aqui eu entro na categoria de acordo com a receita 
          return CategoriesMealsScreen(category  );
          // Retornada a categoria de acordo que você clicou 
          //navegando para outra nela
        },
      ),
      ); */
      //Outra maneira de navegar em telas 
      Navigator.of(context).pushNamed
      ('/categories-meals',
        arguments: category
        // esse caminho leva ate aqui 
      );


  }
  @override
  Widget  build(BuildContext context) {
    return InkWell(
          //Para quando eu clicar nesse Widget ir para outra tela
          onTap: () => _selectCategory(context),
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(15),
            child: Text(
              category.title,
              style:  Theme.of(context).textTheme.headline6,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  category.color.withOpacity(0.5),
                  category.color
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight

              )
            ),
      ),
    );
  }
}