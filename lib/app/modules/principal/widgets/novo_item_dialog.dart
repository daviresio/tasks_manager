import 'package:flutter/material.dart';
import 'package:todolistapp/app/modules/principal/widgets/new_task_dialog/new_task_dialog.dart';

Future<dynamic> showNovoItemDialog(BuildContext context) => showDialog(context: context, child: AlertDialog(
  contentPadding: EdgeInsets.zero,
  content: Container(
    height: 180.0,
    child: Column(
     children: <Widget>[
       ListTile(
         title: Center(child: Text('Add Task', style: TextStyle(fontWeight: FontWeight.bold),)),
         onTap: () {
           Navigator.of(context).pop();
            showNewTaskDialog(context);
         },
       ),
       ListTile(
         title: Center(child: Text('Add Quick Note', style: TextStyle(fontWeight: FontWeight.bold))),
         onTap: () {},
       ),
       ListTile(
         title: Center(child: Text('Add Check List', style: TextStyle(fontWeight: FontWeight.bold))),
         onTap: () {},
       ),
     ],
    ),
  ),
));
