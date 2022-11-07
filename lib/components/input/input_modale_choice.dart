
import 'package:flutter/material.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/components/input/radio_box_input.dart';
import 'package:stage/components/text/title.dart';

class ModaleChoice extends StatefulWidget {
  final List result;
  final int id;
  final List item;
  final double sizeHeightBox;
  final int type;
  final String title;
  final majState;

  final String idName;
  const ModaleChoice(
      {super.key,
      required this.result,
      required this.title,
      required this.id,
      required this.item,
      required this.sizeHeightBox,
      required this.type,
      required this.idName,
      required this.majState});

  @override
  State<ModaleChoice> createState() => _ModaleChoiceState();
}

class _ModaleChoiceState extends State<ModaleChoice> {
  void _modal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      builder: (context) => FractionallySizedBox(
        child: Container(
          decoration: const BoxDecoration(
              color: AppColor.whiteBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Titre(
                      title: widget.title,
                      height: 0.02,
                      color: AppColor.blackTextColor),
                ),
                RadioBoxInput(
                  result: widget.result,
                  majState: widget.majState,
                  id: widget.id,
                 
                  item: widget.item,
                  sizeHeight: widget.sizeHeightBox,
                  type: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
          color: Color(0x40d8d8d8),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 0.07 * sizeHeightcreen,
      child: RawMaterialButton(
        onPressed: () {
          _modal(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 0.03 * sizeHeightcreen),
              child: Text(
                widget.result[widget.id].toString() == 'String' ?
                "Sélectionner":widget.result[widget.id].toString()
                ,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 0.02 * sizeHeightcreen),
              child: const Icon(Icons.arrow_forward_ios_rounded),
            )
          ],
        ),
      ),
    );
  }
}
