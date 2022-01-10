import 'package:flutter/material.dart';
import 'package:stackedproj/ui/views/bottom_navigation/bottom_navigation_view.dart';
import 'package:stackedproj/ui/views/home/home_view.dart';
import 'package:stackedproj/ui/views/mockstartup/mock_startup_view.dart';
import 'package:stackedproj/ui/views/startup/startup_view.dart';
import 'package:stackedproj/utils/paths.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Paths.homeView:
      return MaterialPageRoute(builder: (context) => HomeView());
    case Paths.startupView:
      return MaterialPageRoute(builder: (context) => StartupView());
    case Paths.bottomNavigationView:
      return MaterialPageRoute(builder: (context) => BottomNavigationView());
    case Paths.mockStartupView:
      return MaterialPageRoute(builder: (context) => MockStartupView());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}