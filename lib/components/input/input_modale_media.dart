
import 'package:flutter/material.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/components/text/title.dart';

class ModalMedia extends StatefulWidget {
  final String idName;
  const ModalMedia({super.key, required this.idName});

  @override
  State<ModalMedia> createState() => _ModalMediaState();
}



class _ModalMediaState extends State<ModalMedia> {
  
  
 
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Titre(
                title: "Choisi une ${widget.idName}",
                height: 0.02,
                color: AppColor.blackTextColor)
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    child: const Icon(
                      Icons.camera,
                    ),
                    onPressed: () {},
                  ),
                  const Titre(
                      title: "Caméra",
                      height: 0.02,
                      color: AppColor.blackTextColor)
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    child: const Icon(Icons.image),
                    onPressed: () {},
                  ),
                  const Titre(
                      title: "Gallerie",
                      height: 0.02,
                      color: AppColor.blackTextColor)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
