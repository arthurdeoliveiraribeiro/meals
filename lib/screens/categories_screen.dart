import 'package:flutter/material.dart';


//Aqui vai ser a tela de categorias 
class CategoriasScreen extends StatelessWidget {
  @override
  Widget  build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //Uma hora que tem scrool 
      )
    );
  }
}