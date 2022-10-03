import 'package:emp_app/Screens/HomeScreen.dart';
import 'package:emp_app/business_logic/cubit/email_auth/email_auth_cubit.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const email_auth();
  }
}
