import 'package:apdcl_meter_registry_system/widgets/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user=FirebaseAuth.instance.currentUser!;
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



      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical:100,
        ),
        child: Center(
          child: Column(
            children: [
              Text("Welcome "+ user.email!,
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 234, 92, 22),
                  ),
               ),
      
               MaterialButton(
                onPressed: (){
                  FirebaseAuth.instance.signOut();
                },
                color: Color.fromARGB(255, 234, 92, 22),
                child: Text("Log Out"),
               )
      
      
                
               
      
      
          ],
          )
          
      
        ),
      ),


      drawer:MyDrawer()

    );
    
  }
}