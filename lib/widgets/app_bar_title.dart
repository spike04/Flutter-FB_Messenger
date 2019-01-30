import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String title;

  AppBarTitle({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
