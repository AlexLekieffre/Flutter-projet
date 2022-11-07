import 'package:flutter/material.dart';
import 'package:stage/Utils/app_color.dart';

class TextInput extends StatefulWidget {
  final int id;
  final TextEditingController controller;
  final String idName;
  final String label;
  final majState;
  const TextInput({
    super.key,
    required this.majState,
    required this.controller,
    required this.label,
    required this.id,
    required this.idName,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  String value = "";
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: (v) {
          setState(() {
            value = v;
          });
          widget.majState(v, widget.id);
        },
        controller: widget.controller,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: value == "" && widget.controller.value.text == ""
              ? widget.label
              : null,
        ));
  }
}

class InfoOptionelle extends StatefulWidget {
  const InfoOptionelle({super.key});

  @override
  State<InfoOptionelle> createState() => _InfoOptionelleState();
}

class _InfoOptionelleState extends State<InfoOptionelle> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Information optionelle",
      style:
          TextStyle(fontFamily: 'Filson Soft', color: AppColor.grayTextColor),
    );
  }
}
