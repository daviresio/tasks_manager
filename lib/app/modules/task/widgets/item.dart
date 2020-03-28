import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todolistapp/app/shared/widgets/text_widgets.dart';

class NoteListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.only(right: 5.0, left: 15.0, top: 10.0, bottom: 10.0),
        leading: Container(
          margin: EdgeInsets.only(top: 5.0),
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            border:
                Border.all(width: 2.5, color: Color.fromRGBO(96, 116, 249, 1)),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SubTitleWidget('Go finish with Stephern', color: Colors.black87),
            SubTitleWidget('9:00am'),
          ],
        ),
        trailing: Container(
          height: 20.0,
          width: 3.0,
          color: Color.fromRGBO(96, 116, 249, 1),
        ),
      ),
    );
  }
}
