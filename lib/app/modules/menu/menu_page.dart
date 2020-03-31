import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/modules/menu/menu_controller.dart';
import 'package:todolistapp/app/modules/menu/models/category_model.dart';

class MenuPage extends StatefulWidget {
  final String title;
  const MenuPage({Key key, this.title = "Menu"}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends ModularState<MenuPage, MenuController> {
  @override
  Widget build(BuildContext context) {

    List<CategoryModel> categories = controller.categoryList.data;
    print(categories.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(

      ),
    );
  }
}
