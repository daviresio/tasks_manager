import 'package:flutter/material.dart';

Text TitleWidget(title) => Text(title, style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w800, color: Color.fromRGBO(49, 49, 49, 1)),);

Text SubTitleWidget(subTitle, {color: const Color.fromRGBO(155, 155, 155, 1), fontSize: 16.0}) => Text(subTitle, style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w800, color: color),);

Text TextBoldWidget(title) => Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800, color: Color.fromRGBO(49, 49, 49, 1)),);
