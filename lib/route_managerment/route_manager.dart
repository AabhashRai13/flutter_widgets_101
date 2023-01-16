import 'package:flutter/material.dart';

import '../screens/first_screen.dart';
import '../screens/second_screen.dart';
import '../screens/third_screen.dart';

class Routes {
  static const String firstScreen = "/";
  static const String secondScreen = "/loginOptions";
  static const String thirdScreen = "/loginPage";
  static const String setMobileNumberScreen = "/setMobileNumberScreen";
  static const String dialNumber = "/dialNumber";
}

class RouteGenerator {
  static Route<dynamic> getRoute(
      RouteSettings routeSettings,
      ) {
    switch (routeSettings.name) {
      case Routes.firstScreen:
        return MaterialPageRoute(builder: (_) => const FirstScreen());
      case Routes.secondScreen:
        return MaterialPageRoute(builder: (_) => const SecondScreen());
      case Routes.thirdScreen:
        return MaterialPageRoute(builder: (_) => const ThirdScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text("no Route found"),
          ),
          body: const Center(child: Text("no route found")),
        ));
  }
}
