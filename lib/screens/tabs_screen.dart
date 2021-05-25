import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  
  int _selectedScreenIndex = 0;
  final List<Map<String, Object>> _screens = [
      {'title':'Lista de Categorias', 'screen': CategoriesScreen()},
      {'title':'Meus favoritos', 'screen': FavoriteScreen()},
      //Lista de telas
  ];

  _selectScreen( int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title']),
      ),
      body: _screens[_selectedScreenIndex]['screen'],//começando com a tela 0
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            title: Text('Categorias')

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            title: Text('Favoritos')

          ),
        ],
      ),
      
    );
    
  }
}