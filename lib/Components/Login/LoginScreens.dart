import 'package:flutter/material.dart';
import 'package:matematikadasar/size_config.dart';
import 'LoginComponents.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponents(),
    );
  }
}