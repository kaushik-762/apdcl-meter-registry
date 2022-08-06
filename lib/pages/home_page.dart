import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
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
          color: Colors.orange,
        ),
        
        ),

      ),


      drawer: Drawer(),

    );
    
  }
}