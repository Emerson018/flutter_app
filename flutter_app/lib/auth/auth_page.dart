import 'package:flutter_app/screen/login.dart';
import 'package:flutter_app/screen/sign_up.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool a=true;
  void to(){
    setState(() {
      a=!a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(a){
      return LogInScreen(to);
    }else {
      return SignUpScreen(to);
    }
  }
}