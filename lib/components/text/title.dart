import 'package:flutter/material.dart';

class Titre extends StatefulWidget {
  final Color color;
  final String title;
  final double height;
  const Titre({super.key, required this.title, required this.height, required this.color});

  @override
  State<Titre> createState() => _TitreState();
}

class _TitreState extends State<Titre> {
  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;

    return Text(widget.title,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: 'Filson Soft',
          color: widget.color,
          
          fontSize: widget.height * sizeHeightcreen,
          letterSpacing: 0.23,
          fontWeight: FontWeight.bold,
        ));
  }
}
