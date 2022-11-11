// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/models/user.dart';
import 'package:stage/services/authentication.dart';
import 'package:stage/services/database.dart';
import 'package:provider/provider.dart';

class ButtonNext extends StatefulWidget {
  final List result;
  final parentVoid;
  final int step;
  final int totalStep;
  final TextEditingController nameController;

  ButtonNext(
      {super.key,
      required this.result,
      required this.nameController,
      required this.step,
      required this.totalStep,
      required this.parentVoid});
  bool docexist = false;
  @override
  State<ButtonNext> createState() => _ButtonNextState();
}

class _ButtonNextState extends State<ButtonNext> {
  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;
    final user = Provider.of<AppUser>(context);
    final DatabaseService _userCollection = DatabaseService(user.uid);
    return Padding(
        padding: EdgeInsets.only(
            top: 0.9 * sizeHeightcreen,
            right: 0.05 * sizeWidthScreen,
            left: 0.05 * sizeWidthScreen),
        child: InkWell(
          onTap: () async {
            widget.step == 1 &&
                    widget.result[2].toString() != 'String' &&
                    widget.result[3].toString() != 'String'
                ? widget.parentVoid(widget.step + 1)
                : null;
            widget.step == 2 &&
                    widget.result[4].toString() != 'String' &&
                    widget.result[5].toString() != 'String'
                ? widget.parentVoid(widget.step + 1)
                : null;
            if (widget.step == 3) {
              await _userCollection.saveUser(
                widget.result[2].toString(),
                widget.result[3].toString(),
                widget.result[4].toString(),
                widget.result[5].toString(),
                widget.result[6].toString(),
                widget.result[7].toString(),
                widget.result[8].toString(),
                widget.result[9].toString(),
                widget.result[10].toString(),
                widget.result[11].toString(),
              );
              Navigator.pushReplacementNamed(context, '/');
            }
            ;
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: widget.step == 1 &&
                      widget.result[2].toString() != 'String' &&
                      widget.result[3].toString() != 'String'
                  ? AppColor.yellowBackGroundColor
                  : widget.step == 2 &&
                          widget.result[4].toString() != 'String' &&
                          widget.result[5].toString() != 'String'
                      ? AppColor.yellowBackGroundColor
                      : AppColor.grayBackgroundColor,
            ),
            width: 0.9 * sizeWidthScreen,
            height: 0.09 * sizeHeightcreen,
            child: widget.step == widget.totalStep
                ? const Text("Terminer la présentation",
                    style: TextStyle(
                        color: AppColor.whiteTextColor,
                        fontFamily: 'Filson Soft',
                        fontWeight: FontWeight.w600))
                : const Text("Étape suivante",
                    style: TextStyle(
                        color: AppColor.whiteTextColor,
                        fontFamily: 'Filson Soft',
                        fontWeight: FontWeight.w600)),
          ),
        ));
  }
}
