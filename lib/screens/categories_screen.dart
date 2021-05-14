import 'package:flutter/material.dart';


//Aqui vai ser a tela de categorias 
class CategoriasScreen extends StatelessWidget {
  @override
  Widget  build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, //cada elemento só pode 200px
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20, 
        mainAxisExtent: 20,

      ),
      children: <Widget>[
        
      ],
    );
  }
}