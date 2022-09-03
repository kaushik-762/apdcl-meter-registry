import 'package:apdcl_meter_registry_system/pages/consumerDetails.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class firstTab extends StatefulWidget {
  const firstTab({Key? key}) : super(key: key);

  @override
  State<firstTab> createState() => _firstTabState();
}

class _firstTabState extends State<firstTab> {

  TextEditingController _contoller1=TextEditingController();
  
  

  bool changedButton=false;
  final _formKey=GlobalKey<FormState>();

  Future customerDetails() async{

    try{
      
    await Future.delayed(Duration(seconds:1));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ConsumerDetails(email: _contoller1.text)));

    
    }on FirebaseAuthException catch(e){
      print(e);
        showDialog(context: context,
        builder: (context){
          return AlertDialog(
            content: Text("Customer Doesn't Exist."),
          );
        }
       ) ; 
    }

  }

 /*
 readDetails(cID){

   final myBox=Boxes.getConsumers();
   final myConsumers=myBox.get(cID);
  // myBox.values;
  // myBox.keys;
   showDialog(context: context, 
   builder: (myConsumers){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Consumer ID: '+myConsumers!.cID),
            SizedBox(height: 10,),

            Text('Consumer Name: '+myConsumers!.cName),
            SizedBox(height: 10,),

            Text('Consumer Email: '+myConsumers!.email),
            SizedBox(height: 10,),

            Text('Meter Make: '+myConsumers!.metermake),
            SizedBox(height: 10,),

            Text('Phase Type: '+myConsumers!.phaseType),
            SizedBox(height: 10,),

            Text('Pin Code: '+myConsumers!.pin),
            SizedBox(height: 10,),

            Text('Allotment Date: '+myConsumers!.date),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );


   }); 
   
   
 }   */
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 98, 125, 242),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical:0,),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              
            

              SizedBox(height: 30,),
              
              TextFormField(
                controller: _contoller1,
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    
                      hintText: "Enter email",
                      labelText: "Consumer Email",
                      
                    
                    ),
                   
                  ),


                


                

                  
                SizedBox(height: 30,),

                 Material(
                  color: Color.fromARGB(255, 243, 118, 35),
                  borderRadius: BorderRadius.circular(changedButton?50:8),
                  child: InkWell(
                    splashColor: Color.fromARGB(255, 131, 252, 1),
                   onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>ConsumerDetails(email: _contoller1.text)
                      )
                      );
                   },
                      
                    
                    child: AnimatedContainer(
                      duration: Duration(seconds:1),
                      height: 50,
                      width: changedButton?50:130,
                      
                      alignment: Alignment.center,
                      child: changedButton?Icon(
                        Icons.done,
                        color:Colors.white,
                      )
                      :Text("Get Data",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          
                        ),
                      ),
                      
                     
                    ),
                  ),
                ),


                SizedBox(
                  height: 30,
                 
                ),

                /* Container(
                  child: Text('OR'),
                ), */


                /* SizedBox(height: 30,),

                 Material(
                  color: Color.fromARGB(255, 243, 118, 35),
                  borderRadius: BorderRadius.circular(changedButton?50:8),
                  child: InkWell(
                    splashColor: Color.fromARGB(255, 131, 252, 1),
                   // onTap: ()=>Signin(context),
                      
                    
                    child: AnimatedContainer(
                      
                      
                      duration: Duration(seconds:1),
                      height: 50,
                      width: changedButton?50:130,
                      
                      alignment: Alignment.center,
                      child: changedButton?Icon(
                        Icons.done,
                        color:Colors.white,
                      )
                      :Text("Scanner",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          
                        ),
                      ),
                      
                     
                    ),
                  ),
                ), */
                


              
            ],
          ),
       ),
      ),

    );

    
    
    
      

    
    
    
  }
}