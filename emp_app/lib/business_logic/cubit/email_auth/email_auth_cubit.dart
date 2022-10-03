// ignore_for_file: camel_case_types

import 'package:emp_app/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class email_auth extends StatefulWidget {
  const email_auth({Key? key}) : super(key: key);

  @override
  State<email_auth> createState() => _email_authState();
}

class _email_authState extends State<email_auth> {
  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}
