import 'package:flutter/material.dart';
import 'package:todolistapp/app/modules/task/day/day_page.dart';
import 'package:todolistapp/app/modules/task/month/month_page.dart';
import 'package:todolistapp/app/shared/widgets/text_widgets.dart';

class TaskPage extends StatefulWidget {
  final String title;
  const TaskPage({Key key, this.title = "Task"}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Flex(
            direction: Axis.horizontal,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             subTitleWidget('Work List', fontSize: 20.0, color: Colors.white),
           ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(text: 'Hoje',),
              Tab(text: 'Mes',),
            ],
          ),
        ),
        body:
            TabBarView(
              children: <Widget>[
                DayPage(),
                MonthPage(),
          ],
        ),
      ),
    );
  }
}
