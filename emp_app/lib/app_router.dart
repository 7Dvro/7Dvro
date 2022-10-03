import 'package:emp_app/Screens/LoginScreen.dart';
import 'package:emp_app/business_logic/cubit/phone_auth/phone_auth_cubit.dart';
import 'package:emp_app/presentation/screens/map_screen.dart';
import 'package:emp_app/presentation/screens/otp_screen.dart';
import 'package:emp_app/presentation/widgets/my_drawer.dart';
import 'package:emp_app/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/MapScreen.dart';
import 'Screens/RegistertionScreen.dart';
import 'Screens/WelcomeScreen.dart';
import 'constnats/strings.dart';
import 'presentation/screens/login_screen.dart';

class AppRouter {
  PhoneAuthCubit? phoneAuthCubit;

  AppRouter() {
    phoneAuthCubit = PhoneAuthCubit();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case mapScreen:
        return MaterialPageRoute(
          builder: (_) => const MapScreen(),
        );

      case loginWithPhoneNumberScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<PhoneAuthCubit>.value(
            value: phoneAuthCubit!,
            child: LoginScreen(),
          ),
        );

      case otpScreen:
        final phoneNumber = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<PhoneAuthCubit>.value(
            value: phoneAuthCubit!,
            child: OtpScreen(
              phoneNumber: phoneNumber,
            ),
          ),
        );

      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case wrapper:
        return MaterialPageRoute(
          builder: (_) => const Wrapper(),
        );

      case registertionScreen:
        return MaterialPageRoute(
          builder: (_) => const RegistertionScreen(),
        );

      case loginWithEmailScreen:
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );

      case myDrawer:
        return MaterialPageRoute(
          builder: (_) => MyDrawer(),
        );

      case map_Screen:
        return MaterialPageRoute(
          builder: (_) => const Map_Screen(),
        );
    }
    return null;
  }
}
