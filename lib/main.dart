import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stage/models/user.dart';
import 'package:stage/screen/authenticate/authenticate_screen.dart';
import 'package:stage/screen/spash_screen_wrapper.dart';
import 'package:stage/services/authentication.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthenticationService().user,
      initialData: null,
   child: MaterialApp(
      home: SpashScreenWrapper(),
    ));
  }
}
