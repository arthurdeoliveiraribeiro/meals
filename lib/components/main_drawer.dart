import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {

  Widget _createItem(IconData icon, String label, Function onTap){
    //Metodo para facilitar nos icones do menu lateral 
    return ListTile(
      leading:  Icon(
          icon,
          size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
      ),
      onTap: onTap,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //Componente que vai ficar no menu lateral 
      child:  Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            alignment: Alignment.bottomRight,
            child: Text(
              'Vamos Cozinhar?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor
              ),
              )
          ),
          SizedBox(height: 20),
          _createItem(
            Icons.restaurant_menu,'Refeições',
            ()=>Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)
            //Criei uma função onde eu passo o navigator função simples 
            //aqui eu não crio uma pilha e sim uma nova 
          ),
          _createItem(
            Icons.settings_applications, 'Configurações',
            ()=>Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS)
          ),
      ],),
    );
  }
}