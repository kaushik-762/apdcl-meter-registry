import 'package:flutter/material.dart';

class firstTab extends StatefulWidget {
  const firstTab({Key? key}) : super(key: key);

  @override
  State<firstTab> createState() => _firstTabState();
}

class _firstTabState extends State<firstTab> {
  
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