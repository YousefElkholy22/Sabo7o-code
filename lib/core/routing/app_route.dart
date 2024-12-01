import 'package:flutter/material.dart';
import 'package:siginfy/core/routing/route.dart';
import 'package:siginfy/features/home/home_screen.dart';
import 'package:siginfy/features/login/screens/login_screen.dart';
import 'package:siginfy/features/onboarding/screens/onboarding_screen.dart';
import 'package:siginfy/features/sign_in/sign_in.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
         return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
         case Routes.loginScreen:
         return MaterialPageRoute(builder: (_) => const LoginScreen());
          case Routes.homeScreen:
         return MaterialPageRoute(builder: (_) => const HomeScreen());
         case Routes.signInScreen:
         return MaterialPageRoute(builder: (_) => const SignInScreen());
         


      
      
        
        
        default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Unknown route")),
          ),
        );
        
    }
  }
}
