import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/Utils/app_image.dart';
import 'package:stage/components/text/title.dart';
import 'package:stage/models/user.dart';
import 'package:stage/services/authentication.dart';

class HeaderCreateProfile extends StatefulWidget {
  final parentVoid;
  final int step;
  final int totalStep;
  final String titre;
  const HeaderCreateProfile(
      {super.key,
      required this.titre,
      required this.step,
      required this.parentVoid,
      required this.totalStep});

  @override
  State<HeaderCreateProfile> createState() => _HeaderCreateProfileState();
}

class _HeaderCreateProfileState extends State<HeaderCreateProfile> {
  @override
  Widget build(BuildContext context) {
    final AuthenticationService _auth = AuthenticationService();
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;
    return Container(
        color: AppColor.orangeBackGroundColor,
        height: 0.3 * sizeHeightcreen,
        child: SizedBox(
            height: 0.1 * sizeHeightcreen,
            width: sizeWidthScreen,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 0.07 * sizeHeightcreen),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 1,
                        child: TextButton(
                            onPressed: () {
                              if (widget.step > 1) {
                                widget.parentVoid(widget.step - 1);
                              }
                            },
                            child: SvgPicture.asset(
                              AppImage.arrowIcon,
                              color: AppColor.whiteTextColor,
                            ))),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Titre(
                            title: widget.titre,
                            height: 0.02,
                            color: AppColor.whiteTextColor,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.01 * sizeHeightcreen),
                            child: Text(
                                '${widget.step.toString()} / ${widget.totalStep.toString()}',
                                style: TextStyle(
                                  color: AppColor.whiteTextColor,
                                  fontFamily: 'Sof ia Pro',
                                  fontSize: 0.02 * sizeHeightcreen,
                                  letterSpacing: 0.23,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                          onPressed: () {
                            _auth.signOut();
                          },
                          child: const Icon(
                            Icons.close,
                            color: AppColor.whiteTextColor,
                          ) /* SvgPicture.asset(
                        AppImage.crossIcon,
                        color: AppColor.whiteTextColor,
                      ), */
                          ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 0.03 * sizeHeightcreen),
                  child: Container(
                      height: 0.01 * sizeHeightcreen,
                      width: 0.9 * sizeWidthScreen,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: [
                          Expanded(
                              flex: widget.step,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              )),
                          Expanded(
                              flex: widget.totalStep - widget.step,
                              child: Container())
                        ],
                      )))
            ])));
  }
}
