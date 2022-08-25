import 'package:apdcl_meter_registry_system/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 118, 35),
        title: Text("APDCL",
          style: TextStyle(
            
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        )

        

      ),



      body: Center(
        child: Text("Welcome",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 234, 92, 22),
        ),
        
        ),

      ),


      drawer:MyDrawer()

    );
    
  }
}