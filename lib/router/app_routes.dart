import 'package:fisi_2022_2_tribusrock_donomar_fe/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'login';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'login', icon: Icons.home_max_sharp, name: 'Login Screen', screen: const LoginScreen()),
    MenuOption(route: 'registro', icon: Icons.home_max_sharp, name: 'Registro Screen', screen: const RegistroScreen()),
    MenuOption(route: 'home', icon: Icons.home_max_sharp, name: 'Home Screen', screen: const HomeScreen()),
    // MenuOption(route: 'listview1', icon: Icons.abc_rounded, name: 'ListView1 Screen', screen: const ListView1Screen()),
    // MenuOption(route: 'listview2', icon: Icons.verified, name: 'ListView2 Screen', screen: const ListView2Screen()),
    // MenuOption(route: 'card', icon: Icons.ad_units_outlined, name: 'Card Screen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.alarm, name: 'Alert Screen', screen: const AlertScreen())
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for(final option in menuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen });
    }

    // menuOptions.map((option) => {
    //   appRoutes.addAll({option.route : (BuildContext context) => option.screen })
    // });
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'listview1': (BuildContext context) => const ListView1Screen(),
  //       'listview2': (BuildContext context) => const ListView2Screen(),
  //       'alert': (BuildContext context) => const AlertScreen(),
  //       'card': (BuildContext context) => const CardScreen(),
  //       'home': (BuildContext context) => const HomeScreen(),
  //     };

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      }
}