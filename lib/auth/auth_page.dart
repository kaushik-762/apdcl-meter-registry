import 'package:apdcl_meter_registry_system/pages/login_pages.dart';
import 'package:apdcl_meter_registry_system/pages/signup_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //initially show the loginpage
  bool showLoginPage=true;
  void toggleScreen(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(showSignUpPage: toggleScreen);
    }
    else{
      return  SignUp(showLoginPage: toggleScreen);
    };




    
    
  }
}