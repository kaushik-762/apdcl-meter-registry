

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class ConsumerDetails extends StatelessWidget {
  String email;
    ConsumerDetails({required this.email});
    Stream<QuerySnapshot>detailsofconsumer(BuildContext)async*{
    yield* FirebaseFirestore.instance.collection('consumers').where('Consumer Email',isEqualTo:email).snapshots();
      
  } 
  
  
  


  
  @override
  Widget build(BuildContext context) {

    return Container(
      child: StreamBuilder(
        stream: detailsofconsumer(context),
        builder: (context, AsyncSnapshot snapshot){
          if(!snapshot.hasData)
          {
            return Center(
              child: CircularProgressIndicator(),

            );
          }

           return new ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: itemBuilder)
          
           
          }
        
        ),
    );
    
  }
}