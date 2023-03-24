import 'package:flutter/material.dart';
import 'Components/Login/LoginScreens.dart';
import 'routes.dart';
import 'theme.dart';
void main() async{
  runApp(
    MaterialApp(
      title: "Matematika Dasar",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
  ));
}