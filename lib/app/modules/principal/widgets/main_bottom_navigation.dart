import 'package:flutter/material.dart';

class MainBottomNavigationItem extends StatelessWidget {

  final IconData icon;
  final String text;
  final Function onTap;
  final bool active;
  final EdgeInsets margin;

  const MainBottomNavigationItem({Key key, this.icon, this.text, this.onTap, this.active = false, this.margin = EdgeInsets.zero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0),
          onTap: onTap,
          child: Container(
            height: 70,
            width: 70,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(icon, size: 30.0, color: (active ? Colors.white : Colors.grey[600]),),
                  Text(text, style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
