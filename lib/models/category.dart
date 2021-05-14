//Primeira tela que vai aparecer tela onde mostra as categorias 

import 'package:flutter/material.dart';

class Category{
   final String id;
   final String title;
   final Color color;

   const Category({
     @required this.id,
     @required this.title,
     @required this.color
   });


}