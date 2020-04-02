import 'package:flutter/material.dart';

class CategoryColor {
  final String color;
  final Color primaryColor;
  final Color secundaryColor;

  CategoryColor({this.color, this.primaryColor, this.secundaryColor});


  static Map<String, CategoryColor> getCategoriesColor() {

    Map<String, CategoryColor> categoriesColor = {
      'blue': CategoryColor(color: 'blue', primaryColor: Color.fromRGBO(96, 116, 249, 1), secundaryColor: Color.fromRGBO(96, 116, 249, 0.3)),
      'red': CategoryColor(color: 'red', primaryColor: Color.fromRGBO(228, 43, 106, 1), secundaryColor: Color.fromRGBO(228, 43, 106, 0.3)),
      'green': CategoryColor(color: 'green', primaryColor: Color.fromRGBO(90, 187, 86, 1), secundaryColor: Color.fromRGBO(90, 187, 86, 0.3)),
      'black': CategoryColor(color: 'black', primaryColor: Color.fromRGBO(61, 58, 98, 1), secundaryColor: Color.fromRGBO(61, 58, 98, 0.3)),
      'beige': CategoryColor(color: 'beige', primaryColor: Color.fromRGBO(244, 202, 143, 1), secundaryColor: Color.fromRGBO(244, 202, 143, 0.3)),
      'purple': CategoryColor(color: 'purple', primaryColor: Color.fromRGBO(133, 96, 249, 1), secundaryColor: Color.fromRGBO(133, 96, 249, 0.3)),
    };

    return categoriesColor;
  }

  static List<CategoryColor> getCategoriesColorList() {
    List<CategoryColor> list = [];
    getCategoriesColor().forEach((key, value) => list.add(CategoryColor(color: value.color, primaryColor: value.primaryColor, secundaryColor: value.secundaryColor)));
    return list;
  }

}
