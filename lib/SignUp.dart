import 'package:flutter/material.dart';

import 'MainScreen.dart';

class SignUp extends StatelessWidget {
  static const String routeName ='signup';
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,MainScreen.routeName);},
            child: Text('Sign up'),),
        ],
      ),
    );
  }
}
