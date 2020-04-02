import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/modules/menu/menu_controller.dart';
import 'package:todolistapp/app/modules/menu/models/category_color.dart';
import 'package:todolistapp/app/modules/menu/models/category_model.dart';
import 'package:todolistapp/app/modules/menu/widgets/new_category_dialog.dart';

class MenuPage extends StatefulWidget {
  final String title;
  const MenuPage({Key key, this.title = "Menu"}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends ModularState<MenuPage, MenuController> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0,),
        child: StreamBuilder<List<CategoryModel>>(
            stream: controller.categoryList,
            builder: (context, snapshot) {
              int size = snapshot.data == null ? 1 : snapshot.data.length + 1;
              return GridView.builder(
                itemCount: size,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 100.0,
                  mainAxisSpacing: 40.0,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {

                  if(index == size - 1) {
                    return Container(
                      margin: EdgeInsets.only(left: 8.0),
                      height: 50.0,
                      width: 50.0,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Material(
                          color: Color.fromRGBO(133, 96, 249, 1),
                          child: InkWell(
                            onTap: () => showNewCategoryDialog(context),
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              child: Icon(Icons.add, color: Colors.white,),
                            ),
                          ),
                        ),
                      ),
                    );
                  }


                  CategoryModel item = snapshot.data[index];
                  return Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onLongPress: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 26.0,
                              height: 26.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: CategoryColor.getCategoriesColor()[item.color].secundaryColor,
                              ),
                              child: Center(
                                child: Container(
                                    width: 14.0,
                                    height: 14.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: CategoryColor.getCategoriesColor()[item.color].primaryColor,
                                    ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(item.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                                SizedBox(height: 5.0,),
                                Text('5 tasks', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.black54),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
        ),
      ),
    );
  }
}
