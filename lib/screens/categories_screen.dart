
import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';
//Aqui vai ser a tela de categorias 
class CategoriesScreen extends StatelessWidget {
  @override
  Widget  build(BuildContext context) {
    return GridView(
            padding: EdgeInsets.all(15) ,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200, //cada elemento só pode 200px
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20, 
              mainAxisSpacing: 20,

          ),
          children: DUMMY_CATEGORIES.map((cat){
            //na tela vou mostra pela categoria que estou passando nesse momento
            // retornando em cada item da lista o estilo da category item
            // com isso vai retornar a categoria de acordo com que eu pedi, 
            return CategoryItem(cat);
          }).toList(),
        );

  }
}
