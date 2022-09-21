import 'package:apdcl_meter_registry_system/utils/Tabs/tab1.dart';
import 'package:apdcl_meter_registry_system/utils/Tabs/tab2.dart';
import 'package:apdcl_meter_registry_system/widgets/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final user=FirebaseAuth.instance.currentUser!;

 
  @override
  Widget build(BuildContext context) {
    final style=TextStyle(fontWeight: FontWeight.bold,
                  color:  Colors.black,
                  fontSize: 20,);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
       
        
        appBar: AppBar(
           backgroundColor:   Color.fromARGB(255, 234, 113, 48),
          title: Text("APDCL",
            style: TextStyle(
              
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          )
    
          
    
        ),
    
    
    
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical:30,
          ),
          child: Center(
            
            child: Column(
              
              children: [
                
               /*   Text('Welcome to APDCL',
                  style:GoogleFonts.ptMono(
                    textStyle: style,
                  )
                  ), */
                 
    
                 SizedBox(
                  height: 15,
                 ),
        
                 CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/APDCLLOGO1.jpeg'),
                 ), 


                 SizedBox(
                  height: 30,
                 ),


                 
                  
                  
                 
                  
                   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 132, 154, 237),
                    ),
                    
                     child: TabBar(
                      indicator: BoxDecoration(
                        color: Color.fromARGB(252, 67, 107, 217),
                        borderRadius: BorderRadius.circular(15)
                      ),

                      labelColor: Colors.white,
                      
                      tabs:[
                      

                         Tab(
                          icon: Icon(Icons.person),
                          text: 'Meter Enquiry',
                        ),
                        
                        Tab(
                          icon: Icon(Icons.add),
                          text: 'Allot new Meter',
                        ),  

                      ]
                      
                      ),
                   ),
                 

              
                
                  
                    
                     Container(
                      
                      
                      height: double.maxFinite,
                      width: double.maxFinite,
                       child: TabBarView(
                        
                        
                        children: [
                          firstTab(),
                          secondTab(),
                          
                          
                        ],
                        ),
                    
                     ),
                  
                 

        
        
            ],

            

           
    
            
            ),
            
        
          ),
          
          
        ),

      
    
    
        drawer:MyDrawer()
    
      ),

      
     
    );
    
  }
}