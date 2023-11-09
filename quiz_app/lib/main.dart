//importing the material package
import 'package:quiz_app/models/db_connect.dart';
import 'package:quiz_app/models/question_model.dart';

import './screens/home_screen.dart';
import 'package:flutter/material.dart';
import './models/db_connect.dart';

//run the main method
void main() {
  runApp(
    const MyApp(), //we are going to be creating this below)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //remove the debug banner
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), //will be created in a separate file
    );
  }
}
