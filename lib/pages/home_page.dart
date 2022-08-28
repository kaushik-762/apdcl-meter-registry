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
  final user=FirebaseAuth.instance.currentUser!;

 
  @override
  Widget build(BuildContext context) {
    final style=TextStyle(fontWeight: FontWeight.bold,
                  color:  Color.fromARGB(255, 137, 135, 237),
                  fontSize: 30,);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
        appBar: AppBar(
           backgroundColor:  Color.fromARGB(255, 137, 135, 237),
          title: Text("APDCL",
            style: TextStyle(
              
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          )
    
          
    
        ),
    
    
    
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 0,
            vertical:30,
          ),
          child: Center(
            
            child: Column(
              
              children: [
                
                 Text('Welcome to APDCL',
                  style:GoogleFonts.ptMono(
                    textStyle: style,
                  )
                  ),
                 
    
                 SizedBox(
                  height: 15,
                 ),
        
                 CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/APDCLLOGO1.jpeg'),
                 ), 


                 SizedBox(
                  height: 15,
                 ),


                 
                  
                  
                 
                  
                   TabBar(
                    labelColor: Colors.white,
                    tabs:[

                       Tab(
                        icon: Icon(Icons.person),
                        text: 'Customer Enquiry',
                      ),
                      
                      Tab(
                        icon: Icon(Icons.add),
                        text: 'Add Customer',
                      ),  


                    ]
                    
                    ),
                 

                /*  Expanded(
                  child: TabBarView(
                    children: [
                      firstTab(),
                      secondTab(),
                      
                    ],
                    )
                 ),  */

        
        
            ],

            

           
    
            
            ),
            
        
          ),
          
          
        ),

      
    
    
        drawer:MyDrawer()
    
      ),

      
     
    );
    
  }
}