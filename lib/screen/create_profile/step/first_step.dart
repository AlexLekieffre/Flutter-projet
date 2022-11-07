import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/Utils/app_image.dart';
import 'package:stage/Utils/app_list.dart';
import 'package:stage/components/input/input_block_file_media.dart';
import 'package:stage/components/input/radio_box_input.dart';
import 'package:stage/components/text/text_input.dart';
import 'package:stage/components/text/title.dart';

class FirstStep extends StatefulWidget {
  final List result;
  final TextEditingController nameController;

  final majState;
  const FirstStep(
      {super.key,
      required this.result,
      required this.nameController,
      required this.majState});

  @override
  State<FirstStep> createState() => _FirstStepState();
}

class _FirstStepState extends State<FirstStep> {
  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          top: 0.03 * sizeHeightcreen,
          right: 0.05 * sizeWidthScreen,
          left: 0.05 * sizeWidthScreen),
      child: SizedBox(
        height: 0.63 * sizeHeightcreen,
        width: 0.9 * sizeWidthScreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Titre(
                title: "Informations générales".toUpperCase(),
                height: 0.02,
                color: AppColor.blackTextColor),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BlockFileMediaInput(
                    id: 0,
                    idName: "photo",
                    width: 0.35,
                    height: 0.18,
                    color: AppColor.grayBackgroundColor,
                    text: 'photo',
                    colorText: AppColor.blackTextColor,
                    icon: SvgPicture.asset(
                      AppImage.appPhotoIcon,
                      color: AppColor.blackTextColor,
                    )),
                BlockFileMediaInput(
                    id: 1,
                    idName: "video",
                    width: 0.35,
                    height: 0.18,
                    color: AppColor.grayBackgroundColor,
                    text: 'video',
                    colorText: AppColor.blackTextColor,
                    icon: SvgPicture.asset(
                      AppImage.videoIcon,
                      color: AppColor.blackTextColor,
                    )),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: sizeWidthScreen,
                    child: const Titre(
                        title: "JE M'APPELLE",
                        height: 0.02,
                        color: AppColor.blackTextColor)),
                SizedBox(
                    height: 0.04 * sizeHeightcreen,
                    width: 0.9 * sizeWidthScreen,
                    child: TextInput(
                      majState: widget.majState,
                      controller: widget.nameController,
                      label: "Ecrire ici",
                      id: 2,
                      idName: "nom",
                    )),
              ],
            ),
            Column(
              children: [
                const Titre(
                    title: 'QUEL EST TON GENRE ?',
                    height: 0.02,
                    color: AppColor.blackTextColor),
                Padding(
                  padding: EdgeInsets.only(
                    top: 0.04 * sizeHeightcreen,
                  ),
                  child: RadioBoxInput(
                    result: widget.result,
                    majState: widget.majState,
                    id: 3,
                    item: AppList.itemGenre,
                    sizeHeight: 0.1,
                    type: 1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
