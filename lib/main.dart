import 'package:flutter/material.dart';
import 'package:recipes_app_flutter/res/Fonts.dart' as Fonts;
import 'package:recipes_app_flutter/splash/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipo',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.values[1],
        primaryColor: Color.fromRGBO(226,55,68, 1.0),
        accentColor: Color.fromRGBO(231,94,105, 1.0),
        scaffoldBackgroundColor : Colors.white,

        // Define the default font family.
        fontFamily: Fonts.Metropolis_Regular,

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
      ),
      home: SplashScreen(),
      navigatorObservers: <NavigatorObserver>[routeObserver],
    );
  }
}
