import 'package:apdcl_meter_registry_system/pages/forgot_pw_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 126, 151, 245),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
             
              currentAccountPicture: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/APDCLLOGO1.jpeg'),
              ),
              accountName: Text("APDCL"),
              accountEmail: Text(user.email!),
            ),
            
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Change Password'),
              onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>ForgotPw()));
                    },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
