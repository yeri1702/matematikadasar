import 'package:flutter/material.dart';
import 'package:matematikadasar/utils/constants.dart';
import 'package:matematikadasar/Components/custom_surfix_icon.dart';
import 'package:matematikadasar/size_config.dart';
import 'package:matematikadasar/Components/default_button_custome_color.dart';

class SignInForm extends StatefulWidget {

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  
  String? username;
  String?  password;

  TextEditingController txtUsername = TextEditingController(),
  txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUsername(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),

          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Belum punya akun? Daftar disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildUsername(){
    return TextFormField(
      controller: txtUsername,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukkan Username',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        )
      ),
    );
  }

  TextFormField buildPassword(){
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan Password',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        )
      ),
    );
  }
}