import 'package:flutter/material.dart';
import 'package:graduation_project/Conversion.dart';
import 'package:graduation_project/LoginScreen.dart';
import 'package:graduation_project/MainScreen.dart';
import 'package:graduation_project/Pronouns.dart';
import 'package:graduation_project/SignUp.dart';

import 'Verbs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        MainScreen.routeName: (context) => MainScreen(),
        SignUp.routeName: (context) => SignUp(),
        Pronouns.routeName: (context) => Pronouns(),
        Conversion.routeName: (context) => Conversion(),
        Verbs.routeName: (context) => Verbs(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
