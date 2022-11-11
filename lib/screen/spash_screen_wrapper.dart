import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:stage/models/user.dart';
import 'package:stage/screen/authenticate/authenticate_screen.dart';
import 'package:stage/screen/create_profile/create_profile.dart';
import 'package:stage/screen/home/home_screen.dart';
import 'package:stage/services/database.dart';

class SplashScreenWrapper extends StatefulWidget {
  SplashScreenWrapper({super.key});
  bool docexist = false;
  @override
  State<SplashScreenWrapper> createState() => _SplashScreenWrapperState();
}

class _SplashScreenWrapperState extends State<SplashScreenWrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);

    // ignore: unused_local_variable
    final userDataDoc = FirebaseFirestore.instance
        .collection('User Information')
        .doc(user?.uid)
        .get()
        .then((DocumentSnapshot snapshot) async {
      if (snapshot.exists) {
        setState(() {
          widget.docexist = true;
        });
      }
    });

    if (user == null) {
      return const AutyhenticateScreen();
    } else if (widget.docexist == false) {
      return const CreateProfile();
    } else {
      return HomeScreen();
    }
  }
}


/* var userDataDoc = FirebaseFirestore.instance
        .collection('User Information')
        .doc(user?.uid)
        .get()
        .then((DocumentSnapshot snapshot) {
      if (snapshot.exists) {
        print('Document exists on the database');
        docexist = true;
        print(docexist);
        return docexist;
      }
    }).then((value) {
      if (user == null) {
        return const AutyhenticateScreen();
      } else if (docexist == false) {
        return const CreateProfile();
      } else {
        return HomeScreen();
      }
    }); */