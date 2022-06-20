import '../views/search.dart';

import '../views/edit_animal.dart';
import 'package:flutter/material.dart';

import '../views/animal_detail.dart';
import '../views/add_animal.dart';
import '../views/home.dart';
import '../views/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "login_screen": (context) => const Login(),
  "home_screen": (context) => const Home(),
  "add_animal_screen": (context) => const AddAnimal(),
  "edit_animal_screen": (context) => const EditAnimal(),
  "animal_detail_screen": (context) => const AnimalDetail(),
  "search_screen": (context) => const Search(),
};
