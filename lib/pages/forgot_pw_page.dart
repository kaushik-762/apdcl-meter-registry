import 'package:firebase_auth/firebase_auth.dart';
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

  Future resetPassword() async{
    try{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
    showDialog(context: context, builder: (context){
      return AlertDialog(
        content: Text("Reset Link sent."),
      );
    });
    }on FirebaseAuthException  catch(e){
       print(e);

       showDialog(context: context,
        builder: (context){
          return AlertDialog(
            content: Text("Invalid Email."),
          );
        }
       ) ; 
    }

  }
  bool changedButton=false;
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 237, 244),
      appBar: AppBar(
        title: Text("Password Reset"),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical:0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 200,),
              Container(
                alignment: Alignment.center,
                child: Text("Please Enter a Valid Email.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                    
                  ),
                ),
              ),

              SizedBox(height: 10,),
              
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
                SizedBox(height: 30,),

                Material(
                  color: Color.fromARGB(255, 243, 118, 35),
                  borderRadius: BorderRadius.circular(changedButton?50:8),
                  child: InkWell(
                    splashColor: Color.fromARGB(255, 131, 252, 1),
                    onTap: resetPassword,
                      
                    
                    child: AnimatedContainer(
                      duration: Duration(seconds:1),
                      height: 50,
                      width: changedButton?50:130,
                      
                      alignment: Alignment.center,
                      child: changedButton?Icon(
                        Icons.done,
                        color:Colors.white,
                      )
                      :Text("Reset Password",
                        style: TextStyle(
                          fontSize: 14,
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