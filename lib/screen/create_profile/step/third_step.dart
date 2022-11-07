
import 'package:flutter/material.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/Utils/app_list.dart';
import 'package:stage/components/input/input_multiple_choice.dart';
import 'package:stage/components/text/title.dart';

class ThirdStep extends StatefulWidget {
  final List result;
  final majState;
  const ThirdStep({super.key, required this.majState,required this.result});

  @override
  State<ThirdStep> createState() => _ThirdStepState();
}

class _ThirdStepState extends State<ThirdStep> {
  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.06 * sizeWidthScreen, right: 0.06 * sizeWidthScreen),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 0.02 * sizeHeightcreen,
              ),
              child: Titre(
                  title: "Comment te decris-tu ?".toUpperCase(),
                  height: 0.02,
                  color: AppColor.blackTextColor),
            ),
            SizedBox(
              width: 0.9 * sizeWidthScreen,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 0.03 * sizeHeightcreen,
                    bottom: 0.02 * sizeHeightcreen),
                child: Titre(
                    title: 'Tes traits de caractère',
                    height: 0.02,
                    color: AppColor.blackTextColor),
              ),
            ),
            MultipleChoice(
              result: widget.result,
              majState: widget.majState,
              id: 8,
              sizeHeightWidget: 0.2,
              item: AppList.itemTraitCaractere,
              idName: "trait de caractere",
            ),
            SizedBox(
              width: 0.9 * sizeWidthScreen,
              child: Padding(
                  padding: EdgeInsets.only(
                      top: 0.03 * sizeHeightcreen,
                      bottom: 0.02 * sizeHeightcreen),
                  child: const Titre(
                      title: "Tes centres d'intérêt",
                      height: 0.02,
                      color: AppColor.blackTextColor)),
            ),
            MultipleChoice(
              result: widget.result,
              majState: widget.majState,
              id: 9,
              sizeHeightWidget: 0.34,
              item: AppList.itemCentreInteret,
              idName: 'centre d\'interet',
            ),
            SizedBox(
              width: 0.9 * sizeWidthScreen,
              child: Padding(
                  padding: EdgeInsets.only(
                      top: 0.03 * sizeHeightcreen,
                      bottom: 0.02 * sizeHeightcreen),
                  child: const Titre(
                      title: 'Tes habitudes alimentaires',
                      height: 0.02,
                      color: AppColor.blackTextColor)),
            ),
            MultipleChoice(
              result: widget.result,
              majState: widget.majState,
              id: 10,
              item: AppList.itemHabitudeAlimentaires,
              sizeHeightWidget: 0.16,
              idName: 'habitude alimentaire',
            ),
            SizedBox(
                width: 0.9 * sizeWidthScreen,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 0.03 * sizeHeightcreen,
                      bottom: 0.02 * sizeHeightcreen),
                  child: const Titre(
                      title: 'Ton lifestyle',
                      height: 0.02,
                      color: AppColor.blackTextColor),
                )),
            MultipleChoice(
              result: widget.result,
              majState: widget.majState,
              id: 11,
              item: AppList.itemLifeStyle,
              sizeHeightWidget: 0.3,
              idName: 'life style',
            ),
            SizedBox(
                width: 0.9 * sizeWidthScreen,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 0.03 * sizeHeightcreen,
                      bottom: 0.02 * sizeHeightcreen),
                  child: const Titre(
                      title: 'Ton expérience en coloc',
                      height: 0.02,
                      color: AppColor.blackTextColor),
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 0.03 * sizeHeightcreen),
              child: MultipleChoice(
                result: widget.result,
                  majState: widget.majState,
                  id: 12,
                  item: AppList.itemXpColoc,
                  sizeHeightWidget: 0.03,
                  idName: "Expérience de la colocation"),
            )
          ],
        ),
      ),
    );
  }
}
