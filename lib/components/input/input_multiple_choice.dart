
import 'package:flutter/material.dart';
import 'package:stage/components/input/radio_box_input.dart';

class MultipleChoice extends StatefulWidget {
  final List result;
  final String idName;
  final majState;
  final List item;
  final double sizeHeightWidget;
  int id;

  MultipleChoice({
    super.key,
    required this.result,
    required this.majState,
    required this.id,
    required this.item,
    required this.sizeHeightWidget,
    required this.idName,
  });

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  String result = "";
  void _setResult(newString) {
    setState(() {
      result = newString;
    });
  }

  @override
  Widget build(BuildContext context) {
    double sizeHeightItem = 0.03;
    return RadioBoxInput(
      result: widget.result,
        majState: widget.majState,
        id: widget.id,
        
        item: widget.item,
        sizeHeight: sizeHeightItem,
        type: 3);
  }
}
