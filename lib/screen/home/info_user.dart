import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stage/models/user.dart';

class InfoUser extends StatefulWidget {
  const InfoUser({super.key});

  @override
  State<InfoUser> createState() => _InfoUserState();
}

class _InfoUserState extends State<InfoUser> {
  @override
  Widget build(BuildContext context) {
    final userInfo = Provider.of<AppUserData>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Center(
        child: Card(
            margin:
                const EdgeInsets.only(top: 12.0, bottom: 6.0, left: 20.0, right: 20.0),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Utilisateur : ${userInfo.uid}'),
                Text('Nom : ${userInfo.name}'),
                Text('Genre : ${userInfo.genre}'),
                Text('Age : ${userInfo.age}'),
                Text('Situation :${userInfo.situation}'),
                Text('Nationalité : ${userInfo.nationalite}'),
                Text('Langue parlé : ${userInfo.langue}'),
                Text('Trait de caractère : ${userInfo.traitDeCaractere}'),
                Text('Centre d\'interet : ${userInfo.centreDinteret}'),
                Text('Habitude Alimentaire : ${userInfo.habitudeAlimentaire}'),
                Text('Life style : ${userInfo.lifeStyle}')
              ],
            )),
      ),
    );
  }
}

