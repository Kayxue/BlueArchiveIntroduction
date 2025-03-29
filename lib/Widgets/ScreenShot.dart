import 'package:flutter/material.dart';

class Screenshot extends StatelessWidget {
  final String name;
  final double width;

  const Screenshot({super.key, required this.name, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      width: width,
      child: Image.asset('assets/screenshots/$name'),
    );
  }
}
