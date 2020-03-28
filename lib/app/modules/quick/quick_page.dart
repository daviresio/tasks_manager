import 'package:flutter/material.dart';

class QuickPage extends StatefulWidget {
  final String title;
  const QuickPage({Key key, this.title = "Quick"}) : super(key: key);

  @override
  _QuickPageState createState() => _QuickPageState();
}

class _QuickPageState extends State<QuickPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
