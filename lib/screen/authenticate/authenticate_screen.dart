import 'package:flutter/material.dart';
import 'package:stage/Utils/app_color.dart';
import 'package:stage/common/constants.dart';
import 'package:stage/common/loading.dart';
import 'package:stage/services/authentication.dart';

class AutyhenticateScreen extends StatefulWidget {
  const AutyhenticateScreen({super.key});

  @override
  State<AutyhenticateScreen> createState() => _AutyhenticateScreenState();
}

class _AutyhenticateScreenState extends State<AutyhenticateScreen> {
  final AuthenticationService _auth = AuthenticationService();
  final _formKey = GlobalKey<FormState>();
  String error = "";
  bool loading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool showSignIn = true;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleView() {
    setState(() {
      _formKey.currentState?.reset();
      error = "";
      emailController.text = "";
      passwordController.text = "";
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: AppColor.grayBackgroundColor,
            appBar: AppBar(
              backgroundColor: AppColor.primarayColor,
              elevation: 0.0,
              title: Text(
                showSignIn ?  "Identififier vous": "Inscription a Ekna",
              ),
              actions: [
                TextButton.icon(
                    onPressed: () => toggleView(),
                    icon: Icon(
                      Icons.person,
                      color: AppColor.whiteTextColor,
                    ),
                    label: Text(
                      showSignIn ?   'Inscription':'Identification',
                      style: TextStyle(color: AppColor.whiteTextColor),
                    ))
              ],
            ),
            body: Container(
                child: Form(
              key: _formKey,
              child: Column(
                children: [
                   SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: textInputDecoration.copyWith(hintText: "email"),
                    validator: (value) => value == null || value.isEmpty
                        ? "Entrer un email"
                        : null,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration:
                        textInputDecoration.copyWith(hintText: 'password'),
                    validator: (value) => value != null && value.length < 6
                        ? "Mot de passe minimum 6 caractere"
                        : null,
                  ),
                  ElevatedButton(
                      onPressed: (() async{
                        if (_formKey.currentState?.validate() == true) {
                          setState(() {
                            loading = true;
                          });
                          var password = passwordController.value.text;
                          var email = emailController.value.text;

                          dynamic result = showSignIn?await _auth.signInWithEmailAndPassword(email, password)
                          :await _auth.registerWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() {
                              loading = false;
                              error =
                                  'Merci de remplir correctement les champs';
                            });
                          }
                        }
                      }),
                      child: Text(
                        showSignIn ? "Connexion" :'Inscription',
                        style: TextStyle(color: AppColor.whiteTextColor),
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    error,
                    style: TextStyle(color: AppColor.redBackGroundColor),
                  )
                ],
              ),
            )));
  }
}
