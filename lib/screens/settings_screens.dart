import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),//para voltar para tela 
      body: Center(child: Text('Configurações'),),
    );
  }
}