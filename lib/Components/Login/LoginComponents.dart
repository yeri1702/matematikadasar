import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'LoginForm.dart';
import 'package:matematikadasar/size_config.dart';
import 'package:matematikadasar/utils/constants.dart';
import 'package:matematikadasar/Components/default_button_custome_color.dart';

class LoginComponents extends StatefulWidget {

  @override
  State<LoginComponents> createState() => _LoginComponentsState();
}

class _LoginComponentsState extends State<LoginComponents> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(20)
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight = 0.04,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight = 0.04,
                ),
                SimpleShadow(
                  child: Image.asset(
                    "assets/images/matematika.png",
                    height: 150,
                    width: 200,
                  ),
                  opacity: 0.5,
                  color: kSecondaryColor,
                  offset: Offset(5, 5),
                  sigma: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LOGIN",
                        style: mTitleStyleNameApps,
                        textAlign: TextAlign.center,
                      )
                    ], 
                  )
                ),
                SizedBox(
                  height: 20,
                ),
                SignInForm()
              ],),
          ),
        ),
      ));
  }
}