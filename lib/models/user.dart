import 'package:flutter/material.dart';

class AppUser {
  final String uid;
  AppUser(this.uid);
}

class AppUserData {
  final String uid;
  final String name;
  final String genre;
  final String age;
  final String situation;
  final String nationalite;
  final String langue;
  final String traitDeCaractere;
  final String centreDinteret;
  final String habitudeAlimentaire;
  final String lifeStyle;
  AppUserData(
      {required this.uid,
      required this.name,
      required this.genre,
      required this.age,
      required this.situation,
      required this.langue,
      required this.centreDinteret,
      required this.traitDeCaractere,
      required this.habitudeAlimentaire,
      required this.nationalite,
      required this.lifeStyle});
}
