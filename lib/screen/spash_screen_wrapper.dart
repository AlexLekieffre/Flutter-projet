import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:stage/models/user.dart';
import 'package:stage/screen/authenticate/authenticate_screen.dart';
import 'package:stage/screen/create_profile/create_profile.dart';
import 'package:stage/screen/home/home_screen.dart';
import 'package:stage/services/database.dart';

class SpashScreenWrapper extends StatelessWidget {
  const SpashScreenWrapper({super.key});

  @override
  
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    final dataUser = Provider.of<DatabaseService?>(context);
    if (user == null) {
      return AutyhenticateScreen();
    } else if (dataUser?.user == null) {
      return CreateProfile();
    } else {
      return HomeScreen();
    }
  }
}
