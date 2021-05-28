import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {

  final Function(Settings) onSettingsChanged;


  const SettingsScreen(this.onSettingsChanged);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  var  settings = Settings();

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function (bool)onChagend,
  ) {
    //Para não criar em cada coisa eu crio um metodo para agilizar

    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value){ 
        onChagend(value);
        widget.onSettingsChanged(settings);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Configurações'),
        ),
        drawer: MainDrawer(), //para voltar para tela
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Configurações',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
              child: ListView(
              children: <Widget>[
                _createSwitch(
                  'Sem Glutén',
                  'Só exibe refeições sem Glutén',
                  settings.isGlutenFree,
                  (value) => setState(() => settings.isGlutenFree = value) ,
                  // Para dizer que é sem as coisas a tela de configuração fala o que é sem 
                ),
                _createSwitch(
                  'Sem Lactose',
                  'Só exibe refeições sem Lactose',
                  settings.isLactoseFree,
                  (value) => setState(() => settings.isLactoseFree = value) ,
                  // Para dizer que é sem as coisas a tela de configuração fala o que é sem 
                ),
                _createSwitch(
                  'Vegana',
                  'Só exibe refeições veganas',
                  settings.isVegan,
                  //Muda de false para true 
                  (value) => setState(() => settings.isVegan = value) ,
                  // Para dizer que é sem as coisas a tela de configuração fala o que é sem 
                ),
                _createSwitch(
                  'Vegetariana',
                  'Só exibe refeições vegetarianas',
                  settings.isVegetarian,
                  (value) => setState(() => settings.isVegetarian = value) ,
                  // Para dizer que é sem as coisas a tela de configuração fala o que é sem 
                ),
              ],
              )
            )
          ],
        )
      );
  }
}
