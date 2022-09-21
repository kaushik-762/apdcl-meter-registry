

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class ConsumerDetails extends StatelessWidget {
  String conId;
    ConsumerDetails({required this.conId});
    Stream<QuerySnapshot>detailsofconsumer(BuildContext)async*{
    yield* FirebaseFirestore.instance.collection('consumers').where('Meter Number',isEqualTo:conId).snapshots();
      
    } 
  
  
  
 


  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        

        backgroundColor:   Color.fromARGB(255, 234, 113, 48),
          title: Text("APDCL",
            style: TextStyle(
              
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          )

          

      ),
      body: StreamBuilder(
        
        stream: detailsofconsumer(context),
        builder: (context, AsyncSnapshot snapshot){
          if(!snapshot.hasData)
          {
            return Center(
              child: CircularProgressIndicator(),

            );
          }

            return new ListView.builder(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context,index){
              DocumentSnapshot consumer1=snapshot.data.docs[index];
              
              return Center(
                  
                  
                  
                  
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical:50),
                    child: Container(

                        
                        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          //color: Color.fromARGB(255, 247, 200, 138),
                          borderRadius: BorderRadius.circular(10)
                          
                          
                          
                        ),
                        /* height: double.maxFinite,
                        width: double.maxFinite, */
                      child: Column(
                        children: [

                          SizedBox(
                            height: 15,
                          ),
        
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/images/APDCLLOGO1.jpeg'),
                          ), 


                          SizedBox(
                            height: 30,
                          ),
                          Text('Meter Number: '+consumer1['Meter Number']),

                          SizedBox(
                            height: 20,
                          ),

                          Text('Location ID: '+consumer1['Location ID']),

                          SizedBox(
                            height: 20,
                          ),


                          Text('Meter Make: '+consumer1['Meter Make']),

                          SizedBox(
                            height: 20,
                          ),

                          Text('Phase Type: '+consumer1['Phase Type']),

                          SizedBox(
                            height: 20,
                          ),

                          Text('Type: '+consumer1['Type']),

                          SizedBox(
                            height: 20,
                          ),

                          Text('Reading Digit: '+consumer1['Reading Digit']),

                          SizedBox(
                            height: 20,
                          ),

                          Text('Allotment Date: '+consumer1['Allotment Date']),


                          SizedBox(
                            height: 20,
                          ),


                           Text('Allotted By: '+consumer1['Allotted By']),



                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                );

                

              
            }
            
            ); 

         /*  return ListView(
              children: snapshot.data.documents.map((consumer1){
                return Center(
                  child: Column(
                    children: [
                      Text('Consumer ID: '+consumer1['Consumer ID']),

                      SizedBox(
                        height: 20,
                      ),

                      Text('Consumer Name: '+consumer1['Consumer Name']),

                      SizedBox(
                        height: 20,
                      ),


                      Text('Consumer Email: '+consumer1['Consumer Email']),

                      SizedBox(
                        height: 20,
                      ),

                      Text('Meter Make: '+consumer1['Meter Make']),

                      SizedBox(
                        height: 20,
                      ),

                      Text('Phase Type: '+consumer1['Phase Type']),

                      SizedBox(
                        height: 20,
                      ),

                      Text('Pincode: '+consumer1['Pin Code']),

                      SizedBox(
                        height: 20,
                      ),

                      Text('Allotment Date: '+consumer1['Date']),

                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );

              })
            );   */
          
           
          }
        
        ),
    );
    
  }
}