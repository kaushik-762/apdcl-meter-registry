import 'package:flutter/material.dart';

class ForgotPw extends StatefulWidget {
  const ForgotPw({Key? key}) : super(key: key);

  @override
  State<ForgotPw> createState() => _ForgotPwState();
}

class _ForgotPwState extends State<ForgotPw> {
  final _emailController=TextEditingController();

  void disposal(){
    _emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical:0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 200,),
              
              TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    prefixIcon: Icon(
                     Icons.email,
                     color: Color.fromARGB(255, 243, 118, 35),
                    ),
                      hintText: "Enter Email",
                      labelText: "Email",
                      
                    
                    ),
                   
                  ),
              
            ],
          ),
       ),
      ),

    );
    
  }
}