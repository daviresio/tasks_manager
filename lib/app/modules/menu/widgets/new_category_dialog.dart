import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/modules/menu/models/category_color.dart';
import 'package:todolistapp/app/modules/menu/models/category_model.dart';

import '../menu_controller.dart';

Future showNewCategoryDialog(BuildContext context, [CategoryModel category]) {

  MenuController _controller = Modular.get<MenuController>();

  Widget _item(CategoryColor value, bool selected, Function onTap) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
          color: value.primaryColor,
          borderRadius: BorderRadius.circular(5.0)
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: (!selected ? Container() : Icon(Icons.check, color: Colors.white,)),
        ),
      ),
    );
  }


  return showDialog(context: context, builder: (context) {

    _controller.resetNewCategory();

    category ??= CategoryModel();

    if(category.color != '') {
      _controller.setNewCategoryColorSelected(category.color);
    }

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      contentPadding: EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0, bottom: 20.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            initialValue: category.title,
            onChanged: _controller.setNewCategoryTitle,
            decoration: InputDecoration(
              hintText: 'Title',
              hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black87.withOpacity(.7)),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 0, bottom: 8.0),
            ),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black87, height: 2.2),
          ),
          SizedBox(height: 60.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Choose color', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,),),
              SizedBox(height: 15.0,),
              Observer(
                builder: (_) => Row(
                  children: CategoryColor.getCategoriesColorList().map((CategoryColor data) =>
                      _item(data, _controller.newCategoryColorSelected == data.color, () => _controller.setNewCategoryColorSelected(data.color))).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                width: double.maxFinite,
                child: RaisedButton(
                  onPressed: () async {
                    category.color = _controller.newCategoryColorSelected;
                    category.title = _controller.newCategoryTitle;

                    try {
                      await category.save();
                      Navigator.of(context).pop();
                    } catch(e) {
                      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Nao foi possivel salvar a categoria!', style: TextStyle(color: Colors.white),)));
                    }
                  },
                  color: Theme.of(context).primaryColor,
                  child: Text('SALVAR', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
                ),
              )
            ],
          )
        ],
      ),
    );
  });
}