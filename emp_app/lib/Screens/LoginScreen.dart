// ignore_for_file: file_names, unused_field, avoid_print

import 'package:emp_app/business_logic/cubit/email_auth/email_auth_state.dart';
import 'package:emp_app/constnats/strings.dart';
import 'package:flutter/material.dart';
import 'package:emp_app/Widgets/MyButten.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Image.asset('assets/images/Helal.png'),
                ),
                Text(
                  'Login Page',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: 'Enter You Email',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              obscureText: true,
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: 'Enter You Password',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            MyButten(
              color: Colors.blue[700]!,
              title: 'Sign in',
              onPressed: () async {
                // dynamic result = await _auth.signInAnon();
                // if (result != null) {
                //   print('error signing in');
                // } else {
                //   print('signed in');
                //   print(result.uid);
                // }
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(
                  context,
                  registertionScreen,
                );
              },
              child: const Text(
                'If you dont have account, register now!',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
