import 'dart:ffi';


import 'package:intl/intl.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class secondTab extends StatefulWidget {
  const secondTab({Key? key}) : super(key: key);

  @override
  State<secondTab> createState() => _secondTabState();
}

class _secondTabState extends State<secondTab> {

  final _date=TextEditingController();
 
  bool changedButton=false;
  final _formKey=GlobalKey<FormState>();
  
  
  String? value1;
  final phaseType=[
    "1","3"
  ];

String? value2;
  final meterMake=[
    "x","y","z"
  ];

  

  
  @override
  Widget build(BuildContext context) {

      DropdownMenuItem<String> buildMenuItem(String item)=>DropdownMenuItem(
      value: item,
      child: Text(
        item,
        
      ),
     );

     DropdownMenuItem<String> buildMenuItem1(String item)=>DropdownMenuItem(
      value: item,
      child: Text(
        item,
        
      ),
     );
     
      return Scaffold(
      backgroundColor: Color.fromARGB(255, 98, 125, 242),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical:0),
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
                    
                      hintText: "Enter Consumer Name",
                      labelText: "Consumer Name",
                      
                    
                    ),
                   
                  ), 

                   SizedBox(height: 15,),
                   TextFormField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    
                      hintText: "Enter Consumer Email",
                      labelText: "Consumer Email",
                      
                    
                    ),
                   
                  ),

                  



                 SizedBox(height: 15,),
                   Container(
                    padding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    decoration:BoxDecoration(
                        
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      border:Border.all(), 
                        
                        
                      
                      ), 
                     child: DropdownButton<String>(
                      
                     /* BoxDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                      
                        hintText: "Input Phase Type",
                        labelText: "Phase Type",
                        
                      
                      ), */ 
                      isExpanded: true,
                      hint: Text('Meter Make'),
                      value: value2,
                      items: meterMake.map(buildMenuItem1).toList(),
                      onChanged:(value) => setState(() {
                        this.value2=value;
                        
                      }),
                     
                  ),
                   ),
              


                  SizedBox(height: 15,),
                   Container(
                    padding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    decoration:BoxDecoration(
                        
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      border:Border.all(), 
                        
                        
                      
                      ), 
                     child: DropdownButton<String>(
                      
                     /* BoxDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                      
                        hintText: "Input Phase Type",
                        labelText: "Phase Type",
                        
                      
                      ), */ 
                      isExpanded: true,
                      hint: Text('Phase Type'),
                      value: value1,
                      items: phaseType.map(buildMenuItem).toList(),
                      onChanged:(value) => setState(() {
                        this.value1=value;
                        
                      }),
                     
                  ),
                   ),


                  SizedBox(height: 15,),
                   TextFormField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    
                      hintText: "Input Pincode",
                      labelText: "Pin Code",
                      
                    
                    ),
                   
                  ),

                   SizedBox(height: 15,),


                  TextFormField(
                    controller: _date,
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today_rounded),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    
                      hintText: "YYYY/MM/DD",
                      labelText: "Select Date",
                      
                    
                    ),

                    onTap: () async{
                      var pickedDate=await showDatePicker(
                        context: context, 
                        initialDate:DateTime.now(), 
                        firstDate: DateTime(2000), 
                        lastDate: DateTime(2100)

                        
                        );

                        if(pickedDate!=null){
                          setState(() {
                             _date.text= DateFormat('yyyy-MM-dd').format(pickedDate);
                          });
                        }
                    },
                   
                   ),
                  

                 /*  SizedBox(height: 15,),
                  ElevatedButton(
                    child: Text('Select Date'),
                     onPressed:()async{
                      DateTime? newDate=await
                      showDatePicker(
                        
                        context: context, 
                        initialDate: , 
                        firstDate: DateTime(1900), 
                        lastDate: DateTime(2100),
                        );
                        if(newDate==null) return;

                        setState(() {
                          date=newDate;
                        });
                     },
                    ), */
                   

                SizedBox(height: 20,),

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
                      :Text("Submit",
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