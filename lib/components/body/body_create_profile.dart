
import 'package:flutter/material.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/screen/create_profile/step/first_step.dart';
import 'package:stage/screen/create_profile/step/second_step.dart';
import 'package:stage/screen/create_profile/step/third_step.dart';


class BodyCreateProfile extends StatefulWidget {
  final List result;
  final int step;
  final TextEditingController nameController;

  final majState;
  const BodyCreateProfile({
    super.key,
    required this.result,
    required this.majState,
    required this.step,
    required this.nameController,
  });

  @override
  State<BodyCreateProfile> createState() => _BodyCreateProfileState();
}

class _BodyCreateProfileState extends State<BodyCreateProfile> {
  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: 0.2 * sizeHeightcreen),
      child: Container(
        height: 0.7 * sizeHeightcreen,
        decoration: const BoxDecoration(
            color: AppColor.whiteBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: widget.step == 1
            ? FirstStep(
                result: widget.result,
                nameController: widget.nameController,
                majState: widget.majState,
              )
            : widget.step == 2
                ? SecondStep(
                    result: widget.result,
                    majState: widget.majState,
                  )
                : ThirdStep(
                    result: widget.result,
                    majState: widget.majState,
                  ),
      ),
    );
  }
}
