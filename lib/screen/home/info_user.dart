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
    final users = Provider.of<AppUserData>(context);

    return UserTile(users);
  }
}

class UserTile extends StatelessWidget {
  final AppUserData user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<AppUser?>(context);
    if (currentUser == null) throw Exception("current user not found");
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
          margin:
              EdgeInsets.only(top: 12.0, bottom: 6.0, left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Nom : ${user.name}'),
              Text('Genre : ${user.genre}'),
              Text('Age : ${user.age}'),
              Text('Situation :${user.situation}'),
              Text('Nationalité : ${user.nationalite}'),
              Text('Langue parlé : ${user.langue}'),
              Text('Trait de caractère : ${user.traitDeCaractere}'),
              Text('Centre d\'interet ${user.centreDinteret}'),
              Text('Habitude Alimentaire ${user.habitudeAlimentaire}'),
              Text('Life style ${user.lifeStyle}')
            ],
          )),
    );
  }
}
