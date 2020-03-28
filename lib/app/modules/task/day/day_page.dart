import 'package:flutter/material.dart';
import 'package:todolistapp/app/modules/task/widgets/item.dart';

class DayPage extends StatefulWidget {
  final String title;
  const DayPage({Key key, this.title = "Day"}) : super(key: key);

  @override
  _DayPageState createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          NoteListItem(),
        ],
      ),
    );
  }
}
