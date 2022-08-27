import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final user=FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Container(
       color: Color.fromARGB(255, 229, 123, 71),
        child: ListView(
          children: [
            

           
            UserAccountsDrawerHeader(
              
              accountName: Text("APDCL"),
              accountEmail: Text(user.email!),
              ),


              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: null,
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),
                onTap: null,
              ),

              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text("Logout"),
                onTap: (){
                  FirebaseAuth.instance.signOut();
                },
              ),
            
          ],
        ),
      ),
    );
    
  }
}