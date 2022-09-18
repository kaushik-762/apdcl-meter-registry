
import 'package:apdcl_meter_registry_system/pages/consumerDetails.dart';
import 'package:apdcl_meter_registry_system/pages/home_page.dart';
import 'package:apdcl_meter_registry_system/pages/login_pages.dart';
import 'package:apdcl_meter_registry_system/pages/signup_page.dart';
import 'package:apdcl_meter_registry_system/utils/routes.dart';
import 'package:apdcl_meter_registry_system/widgets/splash.dart';
import 'package:apdcl_meter_registry_system/widgets/successful_add.dart';

import 'package:apdcl_meter_registry_system/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,


      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
    
      initialRoute: "/",

      routes:{
        "/":(context)=> Splash(),
        MyRoutes.homeRoute:(context) => HomePage(),
       // MyRoutes.loginRoute:(context) => LoginPage(showSignUpPage:),
       // MyRoutes.signRoute:(context) => SignUp(),
       MyRoutes.addRoute:(context) => ConsumerAdd(),
       
      }
      



    );
    
  }
}
