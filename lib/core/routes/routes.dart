import 'dart:js';

import 'package:flutter/material.dart';
import 'package:qazonamozlar/view/home_view/home/home_view.dart';

class Routes {
  static final Routes _instance = Routes.init();
  static Routes get instantce => _instance;
  Routes.init();
  Route? onGeneralRoute(RouteSettings set) {
    var args = set.arguments;
    switch (set.name) {
      case '/homeview':
        return MaterialPageRoute(builder: (context) => const HomeView());
    }
  }
}
