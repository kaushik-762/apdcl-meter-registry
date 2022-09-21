import 'package:apdcl_meter_registry_system/pages/home_page.dart';
import 'package:flutter/material.dart';

class ConsumerAdd extends StatefulWidget {
  const ConsumerAdd({Key? key}) : super(key: key);

  @override
  State<ConsumerAdd> createState() => _ConsumerAddState();
}

class _ConsumerAddState extends State<ConsumerAdd> {
  @override

   void initState(){
    super.initState();
    _navigatetoHomePage();
  }

   _navigatetoHomePage()async{
    await Future.delayed(Duration(seconds: 3),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
   }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 237, 244),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

                  CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Done.jpg"),
                  radius: 70,
                  

                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Container(
                    child: Text('Meter Allotment Successful!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),),
                  )

          ],
        )
        
        
      )
    );
    
  }
}