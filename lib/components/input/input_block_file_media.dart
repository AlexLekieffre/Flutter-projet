
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/components/input/input_modale_media.dart';

class BlockFileMediaInput extends StatefulWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final Color colorText;
  final SvgPicture icon;
  final int id;
  final String idName;
  const BlockFileMediaInput({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    required this.text,
    required this.colorText,
    required this.icon,
    required this.id,
    required this.idName,
  });

  @override
  State<BlockFileMediaInput> createState() => _BlockFileMediaInputState();
}

class _BlockFileMediaInputState extends State<BlockFileMediaInput> {
  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;
    return Container(
        width: widget.width * sizeWidthScreen,
        height: widget.height * sizeHeightcreen,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: InkWell(
          splashColor: AppColor.yellowBackGroundColor,
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => ModalMedia(
                      idName: widget.idName,
                    ));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(
          bottom: 0.02 * sizeHeightcreen,),child: widget.icon),
              
              Column(
                children: [
                  Text("Ajouter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: widget.colorText,
                        fontFamily: "Filson Soft",
                        fontSize: 0.02 * sizeHeightcreen,
                        letterSpacing: 0.23,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("une ${widget.text}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: widget.colorText,
                        fontFamily: "Filson Soft",
                        fontSize: 0.02 * sizeHeightcreen,
                        letterSpacing: 0.23,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
