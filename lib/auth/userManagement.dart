import 'package:apdcl_meter_registry_system/pages/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class userManagement{
  storeNewUser(user,context)async{
    var firebaseUser=await FirebaseAuth.instance.currentUser!;
    FirebaseFirestore.instance
    .collection('users')
    .doc(firebaseUser.uid)
    .set({'Email':user.email,'Name':user.Name})
    .then((value) => HomePage())
    .catchError((e){
      print(e);
    });
  

  }
}