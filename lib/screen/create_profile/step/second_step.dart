
import 'package:flutter/material.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/Utils/app_list.dart';
import 'package:stage/components/input/input_modale_choice.dart';
import 'package:stage/components/text/text_input.dart';
import 'package:stage/components/text/title.dart';


class SecondStep extends StatefulWidget {
  final List result;
  final majState;
  const SecondStep({super.key, required this.majState,required this.result});

  @override
  State<SecondStep> createState() => _SecondStepState();
}

class _SecondStepState extends State<SecondStep> {
  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          top: 0.03 * sizeHeightcreen,
          left: 0.06 * sizeWidthScreen,
          right: 0.06 * sizeWidthScreen),
      child: SizedBox(
        width: 0.9 * sizeWidthScreen,
        height: 0.63 * sizeHeightcreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Titre(
                title: 'Quel age as-tu ?'.toUpperCase(),
                height: 0.02,
                color: AppColor.blackTextColor),
            ModaleChoice(
                result: widget.result,
                majState: widget.majState,
                id: 4,
                item: List.generate(100, (i) => {'item': "$i"}),
                sizeHeightBox: 0.09,
                type: 2,
                idName: 'date',
                title: 'Quel age as-tu ? '),
            Titre(
                title: "QUELLE EST ta SITUATION ?".toUpperCase(),
                height: 0.02,
                color: AppColor.blackTextColor),
            ModaleChoice(
              result: widget.result,
              majState: widget.majState,
              title: "QUELLE EST ta SITUATION ?".toUpperCase(),
              id: 5,
              item: AppList.itemSituation,
              sizeHeightBox: 0.09,
              type: 2,
              idName: 'situation',
            ),
            Column(
              children: [
                Titre(
                    title: "quelle est ta nationalité ?".toUpperCase(),
                    height: 0.02,
                    color: AppColor.blackTextColor),
                const InfoOptionelle(),
              ],
            ),
            ModaleChoice(
              result: widget.result,
              majState: widget.majState,
              title: "quelle est ta nationalité ?".toUpperCase(),
              id: 6,
              item: AppList.itemNationalite,
              sizeHeightBox: 0.09,
              type: 2,
              idName: 'nationalite',
            ),
            Column(
              children: [
                Titre(
                    title: "quelles langues parles-tu ?".toUpperCase(),
                    height: 0.02,
                    color: AppColor.blackTextColor),
                const InfoOptionelle(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 0.04 * sizeHeightcreen),
              child: ModaleChoice(
                result: widget.result,
                majState: widget.majState,
                title: "quelles langues parles-tu ?".toUpperCase(),
                id: 7,
                item: AppList.itemLangue,
                sizeHeightBox: 0.09,
                type: 2,
                idName: 'langue',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
