import 'package:flutter/material.dart';

class FourthStep extends StatefulWidget {
  const FourthStep({super.key});

  @override
  State<FourthStep> createState() => _FourthStepState();
}

class _FourthStepState extends State<FourthStep> {
  @override

  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;
    return Padding( padding: EdgeInsets.only(
          top: 0.03 * sizeHeightcreen,
          left: 0.05 * sizeWidthScreen,
          right: 0.05 * sizeWidthScreen),
          child: SizedBox(
            width: 0.9*sizeWidthScreen,
            height: 0.63*sizeHeightcreen,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [],
            ),
          )
          );
  }
}