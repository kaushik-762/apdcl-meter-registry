import 'package:apdcl_meter_registry_system/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final VoidCallback showLoginPage;
  const SignUp({Key? key,required this.showLoginPage,}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  //text controllers
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  final _confirmPasswordController=TextEditingController();
  void disposal(){
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

    super.dispose();
  }
  bool changedButton=false;
  final _formKey=GlobalKey<FormState>();
  Future moveToHome1(BuildContext context)async{

    /* setState(() {
        changedButton=true;
      }); */
      
      if(confirmPassword()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim(),
      );
      }

    /* if(_formKey.currentState!.validate()){
    setState(() {
        changedButton=true;
    });
    await Future.delayed(Duration(seconds:1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
        
    setState(() {
        changedButton=false;
    });
    } */
  }


  bool confirmPassword(){
    if(_passwordController.text.trim()==_confirmPasswordController.text.trim()){
      return true;
    }
    else{
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {

         return Scaffold(

        backgroundColor: Color.fromARGB(255, 205, 237, 244),
        
        
       /*  appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 243, 118, 35),
         title:Text("Login",style: TextStyle(
          color: Colors.black,
         ),), 
        ), */


       
        body:Form(
          key: _formKey,

          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal:25,
              vertical:0,
            ),

            child: Column(
                 
              children: [
          
          
                 SizedBox(
                  height: 200,
                ),
                
                        
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/APDCLLOGO1.jpeg") ,
                  
                  
               ),
                  
                SizedBox(
                  height: 30,
                ),
                  
                Text("APDCL ",style:TextStyle(
                    fontSize:25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 65, 91, 236),
                  )),
                  
                  
                  SizedBox(
                  height: 10,
                ),
                  
                  
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 35),
                  child: Column(
                    children: [
                      
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

                  SizedBox(
                    height: 10,
                  ),

                  
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(

                    contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    prefixIcon: Icon(
                     Icons.lock,
                     color: Color.fromARGB(255, 243, 118, 35),
                    ),
                      hintText: "Enter Password",
                      labelText: "Password",
                      
                    ),
                   
                  ),



                  //Confirm Password
                  SizedBox(
                    height: 10,
                  ),

                  
                  TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(

                    contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    prefixIcon: Icon(
                     Icons.lock,
                     color: Color.fromARGB(255, 243, 118, 35),
                    ),
                      hintText: "Enter Password",
                      labelText: "Password",
                      
                    ),
                   
                  ),

                   SizedBox(
                  height: 15,
                ),

                GestureDetector(
                 // onTap: () => move to Login page(context),
                 onTap: widget.showLoginPage ,
                  child: RichText(
                    text:TextSpan(
                      children:[ 
                      TextSpan(
                        text: "Already have an Account?",
                        style: TextStyle(
                          color: Colors.black,
                        ) 
                      ),

                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          color: Color.fromARGB(255, 8, 52, 213),
                          fontWeight: FontWeight.bold,
                        ) 
                      )
                     ]
                    )
                   
                  ),
                  
                ),
        
                  
                  SizedBox(
                  height: 40,
                  ),
                  
                  
                  Material(
                    color: Color.fromARGB(255, 243, 118, 35),
                    borderRadius: BorderRadius.circular(changedButton?50:8),
                    child: InkWell(
                      splashColor: Color.fromARGB(255, 131, 252, 1),
                      onTap: ()=>moveToHome1(context),
                        
                      
                      child: AnimatedContainer(
                        duration: Duration(seconds:1),
                        height: 50,
                        width: changedButton?50:130,
                        
                        alignment: Alignment.center,
                        child: changedButton?Icon(
                          Icons.done,
                          color:Colors.white,
                        )
                        :Text("Sign Up",
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
                    height: 20,
                  ),
                  
                  
                  
                  
                  
                  
                 /*  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    }, 
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(130, 40)),
                  )  */
                ],
               ),
              )
                
                
              ],
            ),
          ),
        ),

       


     

    );

    
    
  }
}
