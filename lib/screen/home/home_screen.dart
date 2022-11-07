import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/models/user.dart';
import 'package:stage/services/authentication.dart';
import 'package:stage/services/database.dart';

class HomeScreen extends StatelessWidget {
  final AuthenticationService _auth = AuthenticationService();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser>(context);
    if (user == null) throw Exception("user not found");
    final database = DatabaseService(user.uid);
    print(database.user);
    return StreamProvider<AppUserData?>.value(
      initialData: null,
      value: database.user,
      child: Scaffold(
        backgroundColor: AppColor.whiteBackgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.primarayColor,
          title: Text('Ekna'),
          actions: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.person),
              label: Text('Se deconnecter'),
              onPressed: () async {
                await _auth.signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
