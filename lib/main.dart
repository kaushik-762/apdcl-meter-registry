import 'package:apdcl_meter_registry_system/pages/home_page.dart';
import 'package:apdcl_meter_registry_system/pages/login_pages.dart';
import 'package:apdcl_meter_registry_system/utils/routes.dart';
import 'package:apdcl_meter_registry_system/widgets/splash.dart';

import 'package:apdcl_meter_registry_system/widgets/themes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
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
        MyRoutes.loginRoute:(context) => LoginPage(),
        
      }
      



    );
    
  }
}
