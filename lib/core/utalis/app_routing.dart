import 'package:flutter/material.dart';
import 'package:my_maps/core/utalis/app_strings.dart';
import 'package:my_maps/presentation/screens/email_auth/login_email_screen.dart';
import 'package:my_maps/presentation/screens/phone_auth/login_phone_screen.dart';
import 'package:my_maps/presentation/screens/phone_auth/otp_screen.dart';

class AppRouting {
  static MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case AppStrings.loginEmailRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginWithEmail(),
        );
      case AppStrings.otpRoute:
        return MaterialPageRoute(
          builder: (context) => const OtpScreen(),
        );
    }
    return null;
  }
}
