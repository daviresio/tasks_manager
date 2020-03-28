import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todolistapp/app/modules/menu/menu_page.dart';
import 'package:todolistapp/app/modules/perfil/perfil_page.dart';
import 'package:todolistapp/app/modules/principal/widgets/main_bottom_navigation.dart';
import 'package:todolistapp/app/modules/principal/widgets/novo_item_dialog.dart';
import 'package:todolistapp/app/modules/quick/quick_page.dart';
import 'package:todolistapp/app/modules/task/task_page.dart';

class PrincipalPage extends StatefulWidget {
  final String title;

  PrincipalPage({Key key, this.title = "Principal"}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    TaskPage(),
    MenuPage(),
    QuickPage(),
    PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {

    void onTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () => showNovoItemDialog(context),
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             MainBottomNavigationItem(icon: Icons.check_circle, text: 'Tarefas', onTap: () {onTapped(0);}, active: _currentIndex == 0,),
             MainBottomNavigationItem(icon: Icons.dashboard, text: 'Menu', margin: EdgeInsets.only(right: 40.0), onTap: () {onTapped(1);}, active: _currentIndex == 1,),
             MainBottomNavigationItem(icon: Icons.confirmation_number, text: 'Quick', onTap: () {onTapped(2);}, active: _currentIndex == 2,),
             MainBottomNavigationItem(icon: Icons.person, text: 'Perfil', onTap: () {onTapped(3);}, active: _currentIndex == 3,),

            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Color.fromRGBO(41, 46, 78, 1),
      ),
      body: _children[_currentIndex],
    );
  }

}
