import 'colors.dart';
import 'package:flutter/material.dart';

import 'routes/routes.dart';
import 'views/login.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Besy',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.cream,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.darkBrown),
      ),
      home: const Login(),
      routes: routes,
    );
  }
}
