import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class secondTab extends StatefulWidget {
  const secondTab({Key? key}) : super(key: key);

  @override
  State<secondTab> createState() => _secondTabState();
}

class _secondTabState extends State<secondTab> {
  
  @override
  Widget build(BuildContext context) {
      
     
      return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 0,vertical:0),
        child: Material(
          child: Text('data'),
        ),
      );
      
    
  }
}