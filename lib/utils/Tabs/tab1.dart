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

    if(_contoller1!=''){

    try{
      
    await Future.delayed(Duration(seconds:1));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ConsumerDetails(conId: _contoller1.text)));

    
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
    else{
      showDialog(context: context, 
      builder: (context){
        return AlertDialog(
          content:Text('Please enter an Email'),

        );
      });
    }

  }

  

  
  
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
                    
                      hintText: "Enter Consumer ID",
                      labelText: "Consumer ID",
                      
                    
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
                      builder: (context)=>ConsumerDetails(conId: _contoller1.text)
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