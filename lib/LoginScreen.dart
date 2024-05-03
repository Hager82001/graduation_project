import 'package:flutter/material.dart';
import 'package:graduation_project/MainScreen.dart';
import 'package:graduation_project/SignUp.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/6.png'))
      ),*/
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/main/background.png',
              ),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          // backgroundColor: Colors.transparent,
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
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
                      suffixIcon: Icon(Icons.visibility)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MainScreen.routeName);
                  },
                  child: Text('log in'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUp.routeName);
                  },
                  child: Text('Sign up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
