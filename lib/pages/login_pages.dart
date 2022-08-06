import 'package:apdcl_meter_registry_system/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      
        
        appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 33, 124, 243),
         title:Text("Login") 
        ),
      
        body:Column(
          children: [

            Image.asset(
              "assets/images/APDCL.png",
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
              
              
            ),

            SizedBox(
              height: 36,
            ),

            Text("LOGIN",style:TextStyle(
                fontSize:25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 20, 94, 164),
              )),


              SizedBox(
              height: 10,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 35),
              child: Column(
                children: [
                  TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                  
                ),
              ),

              SizedBox(
              height: 40,
              ),

              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                }, 
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(130, 40)),
              )
            ],
           ),
          )
            
            
          ],
        ),

        drawer: Drawer(),


     /*  child: Container(
        
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/APDCL.png"),
            fit: BoxFit.fill,
          )
         ),
        
      ), */

    );
      
  
    
  }
}