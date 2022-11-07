import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stage/Utils/app_color.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.whiteBackgroundColor,
      child: Center(
          child: SpinKitRipple(
        color: AppColor.primarayColor,
        size: 40,
      )),
    );
  }
}