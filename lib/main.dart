
import 'package:besy_mobile_app/Colors.dart';
import 'package:besy_mobile_app/views/LoginPage.dart';
import 'package:flutter/material.dart';


void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Besy',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.cream,
        appBarTheme:AppBarTheme(backgroundColor: AppColors.darkBrown),
        
      ),

      home:LoginPage()
    );
  }

}