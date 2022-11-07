
import 'package:flutter/material.dart';
import 'package:stage/components/body/body_create_profile.dart';
import 'package:stage/components/header/header_create_profile.dart';
import 'package:stage/components/input/button_next.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  List result = [
    String,
    String,
    String,
    String,
    String,
    String,
    String,
    String,
    String,
    String,
    String,
    String,
    String,
  ];

  final TextEditingController nameController = TextEditingController();

  int step = 1;
  int totalStep = 3;
  void _nextStep(newint) {
    setState(() {
      step = newint;
    });
  }

  void _majState(newString, id) {
    setState(() {
      result[id] = newString;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(result);
    return Scaffold(
      body: Stack(children: [
        HeaderCreateProfile(
          titre: 'QUI ES-TU ?',
          step: step,
          totalStep: totalStep,
          parentVoid: _nextStep,
        ),
        BodyCreateProfile(
          result: result,
          nameController: nameController,
          step: step,
          majState: _majState,
        ),
        ButtonNext(
          result: result,
          nameController: nameController,
          step: step,
          totalStep: totalStep,
          parentVoid: _nextStep,
        ),
      ]),
    );
  }
}
