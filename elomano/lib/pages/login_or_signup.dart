import 'loginPage.dart';
import 'singpPage.dart';
import 'package:flutter/material.dart';

class LoginorSignup extends StatefulWidget {
  const LoginorSignup({super.key});

  @override
  State<LoginorSignup> createState() => _LoginorSignupState();
}

class _LoginorSignupState extends State<LoginorSignup> {

  bool showloginpage = true ; 

  void Tooglepages(){
    setState(() {
      showloginpage =!showloginpage ; 
    });
  }
  
  @override
  Widget build(BuildContext context) {
    
    if(showloginpage){
      return LoginPage(onTap: Tooglepages);
    }
    else {
      return SignupPage(onTap: Tooglepages);
    }
   
  }
}