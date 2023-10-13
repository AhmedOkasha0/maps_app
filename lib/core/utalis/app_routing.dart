import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_maps/presentation/screens/login_screen.dart';

class AppRouting{
static MaterialPageRoute? onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case"/":
      return MaterialPageRoute(builder: (context) => LoginScreen(),);
  }
}
}