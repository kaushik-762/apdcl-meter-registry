import 'package:apdcl_meter_registry_system/widgets/boxes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:apdcl_meter_registry_system/model/consumers.dart';
class firstTab extends StatefulWidget {
  const firstTab({Key? key}) : super(key: key);

  @override
  State<firstTab> createState() => _firstTabState();
}

class _firstTabState extends State<firstTab> {
  
  

  bool changedButton=false;
  final _formKey=GlobalKey<FormState>();

 
 readDetails(cID){

   final myBox=Boxes.getConsumers();
   final myConsumers=myBox.get(cID);
   myBox.values;
   myBox.keys;
   showDialog(context: context, 
   builder: (context){
    return AlertDialog(

      content: Text(''
        

      
      ),

    );


   }); 
   
   
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

              
            /*   Container(
                alignment: Alignment.center,
                child: Text("Please Enter a Valid Email.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                    
                  ),
                ),
              ), */

              SizedBox(height: 30,),
              
              TextFormField(
                    
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
                   //onTap: ()=>getDetails(context),
                      
                    
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

                Container(
                  child: Text('OR'),
                ),


                SizedBox(height: 30,),

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
                ),
                


              
            ],
          ),
       ),
      ),

    );

    
    
    
      

    
    
    
  }
}