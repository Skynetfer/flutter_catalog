import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/auth/sign_in.dart';
import 'package:flutter_catalog/screens/auth/sign_up.dart';
import 'package:flutter_catalog/screens/home/home_screen.dart';

import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';

import 'screens/auth/login.dart';
import 'screens/home/home_cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // initialRoute: "/home",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SignInScreen(),
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.homeCartRoute: (context) => CartHome(),
        MyRoutes.signUpRouter: (context) => SignUpScreen(),
        MyRoutes.signInRouter: (context) => SignInScreen(),
      },
    );
  }
}
