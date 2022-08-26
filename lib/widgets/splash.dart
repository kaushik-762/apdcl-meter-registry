import 'package:apdcl_meter_registry_system/pages/home_page.dart';
import 'package:apdcl_meter_registry_system/pages/login_pages.dart';
import 'package:apdcl_meter_registry_system/pages/signup_page.dart';
import 'package:apdcl_meter_registry_system/utils/routes.dart';
import 'package:flutter/material.dart';

import '../pages/main_page.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}



class _SplashState extends State<Splash> {
  @override

  void initState(){
    super.initState();
    _navigatetoLogin();
  }

   _navigatetoLogin()async{
    await Future.delayed(Duration(seconds: 2),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()));
   }
  

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 237, 244),
      body:Center(
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/APDCLLOGO1.jpeg"),
          radius: 70,
          

        ),
        
        
      )
    );
    
  }
}