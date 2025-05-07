import 'package:flutter/material.dart';
import 'package:listview/router/app_routes.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
   
  const SideMenu({
    super.key, 
    required this.scaffoldKey
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  //Saber que opción del menú esta seleccionada.
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      //Nuevo Indice que nosotros queremos
      onDestinationSelected:(value) {
        setState(() {
          navDrawerIndex = value;
        });
        //Navegación
        final menuItem = AppRoutes.menuOptions[value];
        Navigator.of(context).pushNamed(menuItem.route);

        //Para hacer referencia a las propiedades del StateFulWidget
        widget.scaffoldKey.currentState?.closeDrawer();
      },

      children: [

        Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 15, 10),
          child: Text('Main', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        ExpansionTile(
          title: Text('Parcial 1'),
          children: [
            ...AppRoutes.menuOptions
            //Mostrar los 3 primeros elementos del listado
            .sublist(0, 3)
            .map( (item) => ListTile(
              leading: Icon(item.icon),
              title: Text(item.name),
              onTap: () {
                Navigator.pushNamed(context, item.route);
              },
            )),
          ],
        ),

        ExpansionTile(
          title: Text('Parcial 2'),
          children: [
            ...AppRoutes.menuOptions
            //Mostrar los 3 primeros elementos del listado
            .sublist(3)
            .map( (item) => ListTile(
              leading: Icon(item.icon),
              title: Text(item.name),
              onTap: () {
                Navigator.pushNamed(context, item.route);
              },
            )),
          ]
        ),
      ]
    );
  }
}