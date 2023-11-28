import 'package:flutter/material.dart';
import 'package:waiter/helper/customRoute.dart';
import 'package:waiter/ui/page/Auth/signin.dart';
import 'package:waiter/ui/page/Auth/signup_email.dart';
import 'package:waiter/ui/page/common/splash.dart';
import 'package:waiter/ui/page/welcome.dart';

import '../ui/page/Auth/verifyEmail.dart';

class Routes{
  static dynamic route(){
    return{
      'SplashPage': (BuildContext context) => const SplashPage(),
    };
  }
  static Route? onGenerateRoute(RouteSettings settings){
    final List<String> pathElements = settings.name!.split('/');
    if(pathElements[0] != '' || pathElements.length == 1){
      return null;
    }
    switch(pathElements[1]){
      case "WelcomePage":
        return CustomRoute(builder: (BuildContext context)=> const WelcomePage());
      case "VerifyEmailPage":
        return CustomRoute(builder: (BuildContext context)=> const VerifyEmailPage());
      case "SignIn":
        return CustomRoute(builder: (BuildContext context)=> const SignIn());
      case "SignUp":
        return CustomRoute(builder: (BuildContext context)=> const SignupEmail());
    }
  }
}