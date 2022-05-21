import 'package:flutter/material.dart';
import 'package:qazonamozlar/view/home/view/home_view.dart';
import 'package:qazonamozlar/view/screens/splash_screen.dart';

class Routes {
  static final Routes _instance = Routes.init();
  static Routes get instantce => _instance;
  Routes.init();
  Route? onGeneralRoute(RouteSettings set) {
    var args = set.arguments;
    switch (set.name) {
         case '/splashscreen':
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case '/homeview':
        return MaterialPageRoute(builder: (context) => const HomeView());
    }
  }
}
