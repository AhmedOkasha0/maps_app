import 'package:flutter/material.dart';
import 'package:my_maps/core/utalis/app_strings.dart';
import 'package:my_maps/presentation/screens/login_email_screen.dart';
import 'package:my_maps/presentation/screens/login_phone_screen.dart';

class AppRouting {
  static MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) =>  LoginScreen());
      case AppStrings.loginEmailRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginWithEmail(),
        );
    }
    return null;
  }
}
