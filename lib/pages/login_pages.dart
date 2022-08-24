import 'package:apdcl_meter_registry_system/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


Widget buildForgotPassword(){

  return Container(
    alignment: Alignment.centerRight,
    

  );

}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
   //"_"-->Underscore makes it private
class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changedButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context)async{
    if(_formKey.currentState!.validate()){
    setState(() {
        changedButton=true;
    });
    await Future.delayed(Duration(seconds:1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
        
    setState(() {
        changedButton=false;
    });
    }
  }

  moveToSignUp(BuildContext context)async{
    
    
    await Future.delayed(Duration(seconds:1));
    await Navigator.pushNamed(context, MyRoutes.signRoute);
        
    
    
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
        
              Text("APDCL",style:TextStyle(
                  fontSize:25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 65, 91, 236),
                )),
        
        
                SizedBox(
                height: 10,
              ),
        
        
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                    decoration: InputDecoration(

                    //border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    prefixIcon: Icon(
                     Icons.email,
                     color: Color.fromARGB(255, 243, 118, 35),
                    ),
                    hintText: "Enter Username",
                    labelText: "Username",
                    
                  
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Username cannot be empty";
                    }
                    return null;
                  },
                  
                  /* onChanged: (value){
                    name=value;
                    
                    //setState--->calls the build method once again(i.e UI is created again)
                    setState(() {});
        
                  } */
                ),

                
                
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    //border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal:16, vertical:10),
                    prefixIcon: Icon(
                     Icons.lock,
                     color: Color.fromARGB(255, 243, 118, 35),
                    ),
                    hintText: "Enter Password",
                    labelText: "Password",
                    
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Password cannot be empty";
                    }
                    else if(value.length<6){
                      return "Password should be of atleast 6 characters";
                    }
                    return null;
                  },
                ),


                        
                SizedBox(
                  height: 10,
                ),


                Container(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    
                    onTap: ()=>moveToHome(context),
                    child: Text("Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      
                    ),
                    ),
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
                    onTap: ()=>moveToHome(context),
                      
                    
                    child: AnimatedContainer(
                      duration: Duration(seconds:1),
                      height: 50,
                      width: changedButton?50:130,
                      
                      alignment: Alignment.center,
                      child: changedButton?Icon(
                        Icons.done,
                        color:Colors.white,
                      )
                      :Text("Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          
                        ),
                      ),
                      
                      /* decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 118, 35),
                        borderRadius: BorderRadius.circular(changedButton?50:8),
                      ), */
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                GestureDetector(
                  onTap: () => moveToSignUp(context),
                  child: RichText(
                    text:TextSpan(
                      children:[ 
                      TextSpan(
                        text: "Don't have an Account?",
                        style: TextStyle(
                          color: Colors.black,
                        ) 
                      ),

                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ) 
                      )
                     ]
                    )
                   
                  ),
                  
                )
        
                
        
        
                
        
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

        


     /*  child: Container(
        
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/APDCL.png"),
            fit: BoxFit.fill,
          )
         ),
        
      ), */

    );
  
      
  
    
  }
}