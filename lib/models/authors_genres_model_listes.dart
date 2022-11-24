import 'package:flutter/material.dart';

class AuthorsGenresModel {
  AuthorsGenresModel({
    Key? key,
    required this.imageUrl,
    required this.name,
  });
  final String imageUrl;
  final String name;
  static initialList() {
  }

  static List<AuthorsGenresModel> authorsAndGenersList = [];
}
