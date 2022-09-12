import 'dart:ffi';



//import 'package:hive_flutter/adapters.dart';
import 'package:http/http.dart' as http;



import 'package:apdcl_meter_registry_system/utils/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dropdownfield2/dropdownfield2.dart';
import 'package:intl/intl.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class secondTab extends StatefulWidget {

  const secondTab({Key? key}) : super(key: key);

  @override
  State<secondTab> createState() => _secondTabState();
}

class _secondTabState extends State<secondTab> {

  
  
  //text controllers
  final _meterController=TextEditingController();
  final _locController=TextEditingController();
  final _metermakeController=TextEditingController();
  final _phaseController=TextEditingController();
  final _typeController=TextEditingController();
  final _rdController=TextEditingController();
  
  final _date=TextEditingController();
  final _empController=TextEditingController();
  
  
  void disposal(){
    _meterController.dispose();
    _locController.dispose();
    _metermakeController.dispose();
    _phaseController.dispose();
    
   _empController.dispose();
   

    _date.dispose();


     //Hive.box('consumers').close();
    

    super.dispose();
  }

  
 
  bool changedButton=false;
  final _formKey=GlobalKey<FormState>();
  

  
  
String? value1;
  List<String> phaseType=[
    "1","3"
  ];

String? value2;
  List<String> meterMake=[
    "Secure","Genus","LNT","x","y","z"
  ];

String? value3;
  List<String> locId=[
    "Dispur(001)","Ganeshguri(002)","SixMile(003)","Zoo Road(004)","Christian Basti(005)","Beltola(006)","Chandmari(007)","Khanapara(008)","Ulubari(009)","Silpukhuri(010)","Maligaon(011)"
  ];

String? value4;
  List<String> type=[
    "01,Single Phase","02,Triple Phase"
  ];

String? value5;
  List<String> rdigit=[
    "5","6","7","8"
  ];

  

  //add Customer
 Future addCustomer(String meterno,String locid,String metermake,String phase,String date,String emp ) async{
    
   if(locid!='' && metermake!='' && phase!='' && date!='' && emp!=''){
    setState(() {
        changedButton=true;
       });

    await FirebaseFirestore.instance.collection('consumers').add({

      'Consumer id': meterno,
      
      'Meter Make':metermake,
      'Phase Type':phase,
      
      'Date':date,
      'Alloted By':emp,
    }
    );
    moveToAdd(context);
    

    

  }
else{
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          content: Text('Please fill all the fields'),
        );
      }
      );

  }
  
  } 



  

  

   moveToAdd(BuildContext context)async{
    
    
    await Future.delayed(Duration(seconds:1));
    await Navigator.pushNamed(context, MyRoutes.addRoute);

   
    
    
  }

  
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

              
            

              SizedBox(height: 30,),
             TextFormField(
                    controller: _meterController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    
                      hintText: "Meter Number",
                      labelText: "Meter Number",
                      
                    
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

                      child: DropDownField(

                      
                       
                        controller:_locController,
                        
                        
                        hintText: 'Location ID',
                        enabled:true,
                        items: locId,
                        onValueChanged: (value) {
                          setState(() {
                          
                          this.value3=value;
                          
                          
                        });
                        },
                        
                        
             
                       
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

                      child: DropDownField(

                      
                       
                        controller:_metermakeController,
                        
                        
                        hintText: 'Meter Make',
                        enabled:true,
                        items: meterMake,
                        onValueChanged: (value) {
                          setState(() {
                          
                          this.value2=value;
                          
                          
                        });
                        },
                        
                        
             
                       
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
                     child: DropDownField(

                      
                       
                        controller:_phaseController,
                        
                        
                        hintText: 'Phase Type',
                        enabled:true,
                        items: phaseType,
                        onValueChanged: (value) {
                          setState(() {
                          
                          this.value1=value;
                          
                          
                        });
                        },
                        
                        
             
                       
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

                      child: DropDownField(

                      
                       
                        controller:_typeController,
                        
                        
                        hintText: 'Type',
                        enabled:true,
                        items: type,
                        onValueChanged: (value) {
                          setState(() {
                          
                          this.value4=value;
                          
                          
                        });
                        },
                        
                        
             
                       
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

                      child: DropDownField(

                      
                       
                        controller:_rdController,
                        
                        
                        hintText: 'Reading Digit',
                        enabled:true,
                        items: rdigit,
                        onValueChanged: (value) {
                          setState(() {
                          
                          this.value5=value;
                          
                          
                        });
                        },
                        
                        
             
                       
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
                      labelText: "Allotment Date",
                      
                    
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


                   



                  SizedBox(height: 15,),
                   TextFormField(
                     controller: _empController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    
                      hintText: "Enter Employee Name",
                      labelText: "Alloted By",
                      
                    
                    ),
                   
                  ),


                  

                  

               
                   

                SizedBox(height: 20,),

                 Material(
                  color: Color.fromARGB(255, 243, 118, 35),
                  borderRadius: BorderRadius.circular(changedButton?50:8),
                  child: InkWell(
                    splashColor: Color.fromARGB(255, 131, 252, 1),
                   onTap: ()=>addCustomer(
                    _meterController.text.trim(),
                    _locController.text.trim(),
                    
                    _metermakeController.text.trim(),
                    _phaseController.text.trim(),
                    
                    _date.text.trim(),
                    _empController.text.trim(),
                   ),
                      
                    
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